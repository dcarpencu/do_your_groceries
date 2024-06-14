import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/containers/related_products_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/navigation/transitions.dart';
import 'package:do_you_groceries/src/presentation/products/edit_product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redux/redux.dart';

enum Options { delete, edit, cancel }

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({required this.product, super.key});

  final Product product;

  @override
  State<ProductDetailsPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<ProductDetailsPage> {
  late Store<AppState> _store;

  @override
  void initState() {
    _store = StoreProvider.of<AppState>(context, listen: false);
    _store.dispatch(GetProductsStart(product: widget.product));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 48,
            ),
            const BackButton(),
            Hero(
              tag: 'post_card_${widget.product.productId}',
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    if (widget.product.createdByUser == true)
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: SvgPicture.asset(
                          'assets/productsIcons/${widget.product.image}.svg',
                          height: 192,
                        ),
                      )
                    else
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: SizedBox(
                          height: 192,
                          child: FadeInImage(
                            image: NetworkImage(widget.product.image),
                            placeholder: const AssetImage('assets/placeholders/cooking.png'),
                            imageErrorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                              return Image.asset('assets/placeholders/grocery.png');
                            },
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.product.name,
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.product.supermarket,
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: Colors.black54,
                                ),
                          ),
                          Row(
                            children: [
                              Text(
                                '${widget.product.price} RON',
                                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                      color: Colors.grey[700],
                                    ),
                              ),
                              const Spacer(),
                              PopupMenuButton<Options>(
                                icon: const Icon(Icons.more_vert, color: Colors.black),
                                onSelected: (Options item) {
                                  if (item == Options.delete) {
                                    _store
                                      ..dispatch(RemoveProductSimple(product: widget.product))
                                      ..dispatch(
                                        RemoveProductFromGroceryListStart(
                                            groceryListId: _store.state.selectedGroceryList!.groceryListId,
                                            product: widget.product),
                                      );
                                    Navigator.pop(context);
                                  } else if (item == Options.edit) {
                                    Navigator.of(context).push(createRoute(EditProductPage(product: widget.product)));
                                  }
                                },
                                itemBuilder: (BuildContext context) => <PopupMenuEntry<Options>>[
                                  const PopupMenuItem<Options>(
                                    value: Options.delete,
                                    child: ListTile(
                                      leading: Icon(Icons.delete_outline),
                                      title: Text('Remove'),
                                    ),
                                  ),
                                  if(widget.product.createdByUser)
                                  const PopupMenuItem<Options>(
                                    value: Options.edit,
                                    child: ListTile(
                                      leading: Icon(Icons.edit),
                                      title: Text('Edit'),
                                    ),
                                  ),
                                  const PopupMenuItem<Options>(
                                    value: Options.cancel,
                                    child: ListTile(
                                      leading: Icon(Icons.cancel),
                                      title: Text('Cancel'),
                                    ),
                                  ),
                                ],
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
            const SizedBox(height: 16),
            Text(
              'Related Products',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            if (widget.product.createdByUser == true)
              const Center(
                child: Text('No related products'),
              )
            else
              Expanded(
                child: PendingContainer(
                  builder: (BuildContext context, Set<String> pending) {
                    if (pending.contains(GetProducts.pendingKey)) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return RelatedProductsContainer(
                      builder: (BuildContext context, List<Product> relatedProducts) {
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
                              return Card(
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
                                          imageErrorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                                            return Image.asset(
                                              'assets/placeholders/grocery.png',
                                              fit: BoxFit.contain,
                                            );
                                          },
                                          fit: BoxFit.cover,
                                        ),
                                      ),

                                      // child: Image.network(
                                      //   relatedProduct.image,
                                      //   fit: BoxFit.cover,
                                      //   height: 120,
                                      // ),
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
                              );
                            },
                          ),
                        );
                      }, currentProduct: widget.product,
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class MyTextSample {
  static TextStyle? title(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge;
  }

  static TextStyle? body1(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium;
  }
}
