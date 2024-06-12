import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/products/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroPosts extends StatelessWidget {
  const HeroPosts({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _navigateToDetail(context, product);
      },
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
              leading: product.createdByUser == true
                  ? SvgPicture.asset(
                      'assets/productsIcons/${product.image}.svg',
                      width: 72,
                      height: 72,
                    )
                  : SizedBox(
                      height: 72,
                      child: FadeInImage(
                        image: NetworkImage(product.image),
                        placeholder: const AssetImage('assets/placeholders/cooking.png'),
                        imageErrorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                          return Image.asset('assets/placeholders/grocery.png');
                        },
                      )
                      // Image.network(
                      //   product.image,
                      //   fit: BoxFit.cover,
                      //   width: 64,
                      // ),
                    ),
              title: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      product.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (product.supermarket.isNotEmpty)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        product.supermarket,
                        style: Theme.of(context).textTheme.bodyLarge,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                ],
              ),
              subtitle: Text('${product.price} RON'),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToDetail(BuildContext context, Product product) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => ProductDetailsPage(product: product),
      ),
    );
  }
}
