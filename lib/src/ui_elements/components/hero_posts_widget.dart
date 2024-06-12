import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/containers/related_products_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/products/product_details_page.dart';
import 'package:do_you_groceries/src/ui_elements/components/image_shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:redux/redux.dart';

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
                      child: Image.network(
                        product.image,
                        fit: BoxFit.cover,
                        width: 64,
                      ),
                    ),
              title: Column(
                children: <Widget>[
                  Text(
                    product.name,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      product.supermarket,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
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
