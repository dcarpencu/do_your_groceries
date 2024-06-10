import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class SelectedListContainer extends StatelessWidget {
  const SelectedListContainer({required this.builder, super.key});

  final ViewModelBuilder<GroceryList> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, GroceryList>(
      converter: (Store<AppState> store) => store.state.groceryLists
          .firstWhere((GroceryList groceryList) => groceryList.groceryListId == store.state.selectedGroceryList!.groceryListId),
      builder: builder,
    );
  }
}
