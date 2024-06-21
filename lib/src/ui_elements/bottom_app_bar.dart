import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/navigation/transitions.dart';
import 'package:do_you_groceries/src/presentation/products/create_product_page.dart';
import 'package:do_you_groceries/src/presentation/products/create_recipes_page.dart';
import 'package:do_you_groceries/src/presentation/supermarkets/markets_page.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({
    required this.store,
    super.key,
  });

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return BottomAppBar(
          height: 60,
          shape: const CircularNotchedRectangle(),
          color: Colors.lightBlue,
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  tooltip: 'Open navigation menu',
                  icon: const Icon(Icons.smart_toy),
                  onPressed: () {
                    store..dispatch(ListenForProductsDone(store.state.selectedGroceryList!.groceryListId))
                    ..dispatch(SmartUpdateListStart(groceryListProducts: store.state.productsGroceryList))
                    ..dispatch(ListenForProductsStart(store.state.selectedGroceryList!.groceryListId));
                  },
                ),
                IconButton(
                  tooltip: 'Search',
                  icon: const Icon(Icons.search),
                  onPressed: () => Navigator.of(context).push(createRoute(MarketsPage(store: store))),
                ),
                IconButton(
                  tooltip: 'Generate',
                  icon: const Icon(Icons.generating_tokens),
                  onPressed: () {
                    Navigator.of(context).push(createRoute(const CreateRecipesPage()));
                  },
                ),
                IconButton(
                  tooltip: 'Favorite',
                  icon: const Icon(Icons.create),
                  onPressed: () => Navigator.of(context).push(createRoute(const CreateProductPage())),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
