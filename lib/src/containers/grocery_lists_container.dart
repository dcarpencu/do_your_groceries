import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class GroceryListsContainer extends StatelessWidget {
  const GroceryListsContainer({required this.builder, super.key});

  final ViewModelBuilder<Set<GroceryList>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Set<GroceryList>>(
      converter: (Store<AppState> store) => store.state.groceryLists,
      builder: builder,
    );
  }
}
