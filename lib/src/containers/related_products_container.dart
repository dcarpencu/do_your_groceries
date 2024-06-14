import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class RelatedProductsContainer extends StatelessWidget {
  const RelatedProductsContainer({required this.builder, required this.currentProduct, super.key});

  final Product currentProduct;
  final ViewModelBuilder<List<Product>> builder;

  List<Product> _sortProductsByPrice(List<Product> products) {
    final List<Product> sortedProducts = List<Product>.from(products)
      ..sort((Product a, Product b) => a.price.compareTo(b.price));
    return sortedProducts;
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Product>>(
      converter: (Store<AppState> store) {
        final String currentProductId = currentProduct.productId;
        final List<Product> filteredProducts =
            store.state.relatedProducts.where((Product product) => product.productId != currentProductId).toList();
        return _sortProductsByPrice(filteredProducts);
      },
      builder: builder,
    );
  }
}
