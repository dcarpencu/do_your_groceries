import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class SearchProductsContainer extends StatelessWidget {
  const SearchProductsContainer({required this.builder, super.key});

  final ViewModelBuilder<List<Auchan>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Auchan>>(
      converter: (Store<AppState> store) => store.state.products,
      builder: builder,
    );
  }
}
