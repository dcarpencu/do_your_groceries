import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class SelectedListContainer extends StatelessWidget {
  const SelectedListContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<GroceryList> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, GroceryList>(
      converter: (Store<AppState> store) => store.state.groceryLists.firstWhere((GroceryList groceryList) => groceryList.title == store.state.selectedListTitle),
      builder: builder,
    );
  }
}
