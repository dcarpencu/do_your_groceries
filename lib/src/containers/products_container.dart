import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class ProductsContainer extends StatelessWidget {
  const ProductsContainer({required this.builder, super.key});

  final ViewModelBuilder<List<Product>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Product>>(
      converter: (Store<AppState> store) => store.state.productsList
          .where((Product product) => product.groceryListTitle == store.state.selectedListTitle)
          .toList(),
      builder: builder,
    );
  }
}
