import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/containers/related_products_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'image_shimmer_widget.dart';

class HeroPosts extends StatelessWidget {
  const HeroPosts({required this.product, super.key});

  final Product product;

  // Helper method to generate a list of sample posts.

  @override
  Widget build(BuildContext context) {
    return PostCard(product: product);
  }
}

// PostCard is a widget that displays a post in a card format.
class PostCard extends StatefulWidget {
  const PostCard({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  late Store<AppState> _store;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _navigateToDetail(context, widget.product);
      },
      child: Hero(
        tag: 'product_card_${widget.product.productId}',
        child: Material(
          child: Card(
            margin: const EdgeInsets.all(8),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: ListTile(
              leading: widget.product.image.isEmpty
                  ? const FlutterLogo(size: 72)
                  : SizedBox(
                height: 72,
                child: Image.network(
                  widget.product.image,
                  fit: BoxFit.cover,
                  width: 64,
                ),
              ),
              title: Text(
                widget.product.name,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              subtitle: Text('${widget.product.price} RON'),
            ),
          ),
        ),
      ),
    );
  }

  // Method to navigate to the detail page when a post is tapped.
  void _navigateToDetail(BuildContext context, Product product) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => PostDetailPage(product: product),
      ),
    );
  }
}

// PostDetailPage displays detailed information about a post.
class PostDetailPage extends StatefulWidget {
  const PostDetailPage({required this.product, super.key});

  final Product product;

  @override
  State<PostDetailPage> createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {

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
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'post_card_${widget.product.productId}',
            child: Card(
              margin: const EdgeInsets.all(8),
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // Displaying detailed post image.
                    if (widget.product.image.isNotEmpty)
                      Image.network(
                        widget.product.image,
                        fit: BoxFit.cover,
                        height: 300,
                      )
                    else
                      const Padding(
                        padding: EdgeInsets.all(8),
                        child: FlutterLogo(size: 216),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Displaying detailed post title.
                          Text(
                            widget.product.name,
                            style: MyTextSample.title(context)!.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          // Displaying detailed post description.
                          Text(
                            '${widget.product.price} RON',
                            style: MyTextSample.body1(context)!.copyWith(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.redAccent),
            child: TextButton(onPressed: () {
              _store.dispatch(RemoveProductFromGroceryListStart(groceryListId: _store.state.selectedGroceryList!,
                  product: widget.product),);
              Navigator.pop(context);
            }, child: const Text('Remove product from list')),
          ),
          PendingContainer(builder: (BuildContext context, Set<String> pending) {
            if (pending.contains(GetProducts.pendingKey)) {
              return const CircularProgressIndicator();
            }
            return RelatedProductsContainer(builder: (BuildContext context, List<Product> relatedProducts) {
              return Expanded(
                child: ListView.builder(
                  itemCount: relatedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Product relatedProduct = relatedProducts[index];
                    print(relatedProduct.name);
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Material(
                        borderRadius: BorderRadius.circular(24),
                        elevation: 4,
                        child: SizedBox(
                          //padding: const EdgeInsets.all(8),
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
                                ImageShimmer(
                                  url: relatedProduct.image,
                                  height: 100,
                                  width: 130,
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
                                      Text(
                                        relatedProduct.supermarket,
                                        //style: const TextStyle(fontSize: 16),
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
                  },),
              );
            },
            );
          },),
        ],
      ),
    );
  }
}

// MyTextSample is a utility class that provides text styles.
class MyTextSample {
  static TextStyle? title(BuildContext context) {
    return Theme
        .of(context)
        .textTheme
        .titleLarge;
  }

  static TextStyle? body1(BuildContext context) {
    return Theme
        .of(context)
        .textTheme
        .bodyMedium;
  }
}
