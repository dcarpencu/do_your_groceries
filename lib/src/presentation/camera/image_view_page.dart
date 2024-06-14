import 'dart:io';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/containers/related_products_camera_container.dart';
import 'package:do_you_groceries/src/containers/related_products_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/image_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:redux/redux.dart';

class ImageViewPage extends StatefulWidget {
  const ImageViewPage({super.key});

  @override
  State<ImageViewPage> createState() => _ImageViewPageState();
}

class _ImageViewPageState extends State<ImageViewPage> {
  late Store<AppState> _store;
  bool _productsFetched = false;

  @override
  void initState() {
    _store = StoreProvider.of<AppState>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    _store.dispatch(const SetPictureToNull());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Captured Image'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: PendingContainer(
          builder: (BuildContext context, Set<String> pending) {
            final double width = MediaQuery.of(context).size.width * 0.9;
            if (pending.contains(TakePicture.pendingKey)) {
              return Center(
                child: LoadingAnimationWidget.fourRotatingDots(
                  color: Colors.black,
                  size: 100,
                ),
              );
            }
            if (!_productsFetched) {
              final String imageLabel = _store.state.takenPicture!.imageLabel;

              if (imageLabel.isNotEmpty) {
                final List<String> object = parseString(imageLabel);
                _store.dispatch(GetProductsForCameraStart(category: object[1], tag: object[2]));
              }
              _productsFetched = true;
            }

            return Column(
              children: <Widget>[
                Center(
                  child: ClipRRect(
                    child: Container(
                      width: width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      padding: const EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.file(
                          File(
                            _store.state.takenPicture!.picture!.path,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: PendingContainer(
                    builder: (BuildContext context, Set<String> pending) {
                      if (pending.contains(GetProductsForCamera.pendingKey)) {
                        return const CircularProgressIndicator();
                      }
                      return RelatedProductsCameraContainer(
                        builder: (BuildContext context, List<Product> relatedProducts) {
                          if (relatedProducts.isEmpty) {
                            return const Text('No match for your product.');
                          }
                          return ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            ),
                            child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 16,
                                childAspectRatio: 3 / 4,
                              ),
                              itemCount: relatedProducts.length,
                              itemBuilder: (BuildContext context, int index) {
                                final Product relatedProduct = relatedProducts[index];
                                return InkWell(
                                  onTap: () {
                                    print('\n\n\n RELATED PRODUCT: $relatedProduct\n\n\n');
                                    print('\n\n\n selected grocery: ${ _store.state.selectedGroceryList!.groceryListId}\n\n\n');

                                    _store.dispatch(
                                      AddProductToGroceryListStart(
                                        relatedProduct,
                                        _store.state.selectedGroceryList!.groceryListId,
                                      ),
                                    );//..dispatch(GetProductsAfterEditStart(groceryListId: _store.state.selectedGroceryList!.groceryListId));
                                    context..pop()
                                    ..pop();
                                  },
                                  borderRadius: BorderRadius.circular(15),
                                  splashColor: Theme.of(context).primaryColor.withOpacity(0.3),
                                  highlightColor: Colors.transparent,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    elevation: 2,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                                          child: SizedBox(
                                            height: 120,
                                            child: FadeInImage(
                                              image: NetworkImage(relatedProduct.image),
                                              placeholder: const AssetImage('assets/placeholders/cooking.png'),
                                              imageErrorBuilder:
                                                  (BuildContext context, Object error, StackTrace? stackTrace) {
                                                return Image.asset(
                                                  'assets/placeholders/grocery.png',
                                                  fit: BoxFit.contain,
                                                );
                                              },
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                relatedProduct.name,
                                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                relatedProduct.supermarket,
                                                style: Theme.of(context).textTheme.bodySmall,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const SizedBox(height: 4),
                                              Text(
                                                '${relatedProduct.price} RON',
                                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                                      color: Colors.grey[700],
                                                    ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

List<String> parseString(String input) {
  final List<String> parts = input.split(' ');
  final String part1 = parts[0];
  final String part2 = parts[1];

  final String remaining = parts.sublist(2).join(' ');
  final String part3 = remaining.split(' :')[0];

  return <String>[part1, part2, part3];
}
