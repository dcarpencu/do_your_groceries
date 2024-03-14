import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/search_products_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class SearchProducts extends StatefulWidget {
  const SearchProducts({Key? key}) : super(key: key);

  @override
  State<SearchProducts> createState() => _SearchProductsState();
}

class _SearchProductsState extends State<SearchProducts> {
  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(GetProducts(_onResult));
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
              title: const Text('Movie App'),
            ),
            body: SearchProductsContainer(builder: (BuildContext context, List<Auchan> products) {
              if (state.isLoading && products.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              }
                return ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Auchan product = products[index];

                      return Column(
                        children: <Widget>[
                          Image.network(product.image),
                          Text(product.title),
                          Text('${product.price}'),
                        ],
                      );
                    },
                  );
                },
              ),);
            },);
  }
}
