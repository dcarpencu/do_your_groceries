import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';

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
class PostCard extends StatelessWidget {
  const PostCard({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToDetail(context, product),
      child: Hero(
        tag: 'product_card_${product.productId}',
        child: Material(
          child: Card(
            margin: const EdgeInsets.all(8),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: ListTile(
              leading: product.image.isEmpty
                  ? const FlutterLogo(size: 72)
                  : SizedBox(
                      height: 72,
                      child: Image.network(
                        product.image,
                        fit: BoxFit.cover,
                        width: 64,
                      ),
                    ),
              title: Text(product.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              subtitle: Text('${product.price} RON'),
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
class PostDetailPage extends StatelessWidget {
  const PostDetailPage({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Hero(
        tag: 'post_card_${product.productId}',
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
                Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  height: 300,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Displaying detailed post title.
                      Text(
                        product.name,
                        style: MyTextSample.title(context)!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Displaying detailed post description.
                      Text(
                        '${product.price} RON',
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
    );
  }
}

// MyTextSample is a utility class that provides text styles.
class MyTextSample {
  static TextStyle? title(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge;
  }

  static TextStyle? body1(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium;
  }
}
