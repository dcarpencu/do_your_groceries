import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/user_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({Key? key}) : super(key: key);


  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(const GetUserProducts());
  }

  void _onResult(AppAction action) {
    if (action is GetCurrentUserSuccessful) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Page loaded.')));
    } else if (action is GetProductsError) {
      final Object error = action.error;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error has occurred $error')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Shopping list'),
          ),
          body:  UserContainer(
           builder: (BuildContext context, AppUser? user) {
             print(user!.userProductList);
             return Text('Dada');

           },
          ),
          // ListView.builder(
          //   itemCount: 6,
          //   itemBuilder: (BuildContext context, int index) {
          //     //Text(state.user!.userProductList[index].name);
          // },),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: 'Create',
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: BottomAppBar(
            height: 60,
            shape: const CircularNotchedRectangle(),
            color: Colors.green,
            child: IconTheme(
              data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    tooltip: 'Open navigation menu',
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  IconButton(
                    tooltip: 'Search',
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      Navigator.pushNamed(context, '/markets');
                    },
                  ),
                  IconButton(
                    tooltip: 'Favorite',
                    icon: const Icon(Icons.favorite),
                    onPressed: () {},
                  ),
                  //const Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
