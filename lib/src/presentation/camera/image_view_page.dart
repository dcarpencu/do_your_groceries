import 'dart:io';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/containers/related_products_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/image_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
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
      body: PendingContainer(
        builder: (BuildContext context, Set<String> pending) {
          final double width = MediaQuery.of(context).size.width * 0.9;
          if (pending.contains(TakePicture.pendingKey)) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!_productsFetched) {
            final String imageLabel = _store.state.takenPicture!.imageLabel;
            final List<String> object = parseString(imageLabel);

            if (object.length > 1) {
              _store.dispatch(GetProductsForCameraStart(category: object[1], tag: object[2]));
            }
            _productsFetched = true;
          }

          return Column(
            children: <Widget>[
              Center(
                child: Container(
                  width: width,
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.file(
                      File(
                        _store.state.takenPicture!.picture!.path,
                      ),
                    ),
                  ),
                ),
              ),
              Text(_store.state.takenPicture!.imageLabel),
              PendingContainer(
                builder: (BuildContext context, Set<String> pending) {
                  if (pending.contains(GetProductsForCamera.pendingKey)) {
                    return const CircularProgressIndicator();
                  }
                  return RelatedProductsContainer(
                    builder: (BuildContext context, List<Product> relatedProducts) {
                      if (relatedProducts.isEmpty) {
                        return const Text('No match for your product.');
                      }
                      return Expanded(
                        child: ListView.builder(
                          itemCount: relatedProducts.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Product relatedProduct = relatedProducts[index];
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: Material(
                                borderRadius: BorderRadius.circular(24),
                                elevation: 4,
                                child: SizedBox(
                                  height: 100,
                                  width: 120,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            ImageShimmer(
                                              url: relatedProduct.image,
                                              height: 70,
                                              width: 130,
                                            ),
                                            Text(
                                              relatedProduct.supermarket,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                relatedProduct.name,
                                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  const Icon(
                                                    Icons.monetization_on,
                                                    size: 12,
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    '${relatedProduct.price} RON',
                                                    style: const TextStyle(fontSize: 16),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
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
            ],
          );
        },
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
