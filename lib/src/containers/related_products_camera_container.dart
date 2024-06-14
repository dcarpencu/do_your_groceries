import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class RelatedProductsCameraContainer extends StatelessWidget {
  const RelatedProductsCameraContainer({required this.builder, super.key});

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
        return _sortProductsByPrice(store.state.relatedProducts);
      },
      builder: builder,
    );
  }
}
