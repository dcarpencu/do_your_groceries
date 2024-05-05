import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/containers/products_container.dart';
import 'package:do_you_groceries/src/containers/selected_list_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/camera/image_recognition_page.dart';
import 'package:do_you_groceries/src/presentation/supermarkets/markets_page.dart';
import 'package:do_you_groceries/src/ui_elements/bottom_app_bar.dart';
import 'package:do_you_groceries/src/ui_elements/components/hero_transition_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class UserProductsPage extends StatefulWidget {
  const UserProductsPage({super.key});

  @override
  State<UserProductsPage> createState() => _UserProductsPageState();
}

class _UserProductsPageState extends State<UserProductsPage> {
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();

    _store = StoreProvider.of<AppState>(context, listen: false);
    _store.dispatch(ListenForProductsStart(_store.state.selectedGroceryList!));
  }

  @override
  void dispose() {
    _store
      ..dispatch(ListenForProductsDone(_store.state.selectedGroceryList!))
      ..dispatch(const SetUnselectedList());

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SelectedListContainer(
      builder: (BuildContext context, GroceryList groceryList) {
        return Scaffold(
          appBar: AppBar(
            title: Text(groceryList.title),
          ),
          body: PendingContainer(
            builder: (BuildContext context, Set<String> pending) {
              if (pending.contains(ListenForProducts.pendingKey)) {
                return const LinearProgressIndicator();
              }
              return ProductsContainer(
                builder: (BuildContext context, List<Product> products) {
                  if (products.isNotEmpty) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // if (products.isNotEmpty)
                        Expanded(
                          child: ListView.builder(
                            itemCount: products.length,
                            itemBuilder: (BuildContext context, int index) {
                              final Product product = products[index];
                              return HeroPosts(
                                product: product,
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const Center(
                      child: Text('No products YET.\nPlease add some!'),
                    );
                  }
                },
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _store.dispatch(const GetCamerasStart());
              Navigator.of(context).push(
                MaterialPageRoute<Widget>(
                    builder: (BuildContext context) => CameraApp(
                          cameras: _store.state.cameras,
                        )),
              );
            },
            tooltip: 'Camera',
            child: const Icon(Icons.camera_alt),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          bottomNavigationBar: const BottomAppBarWidget(
            route: MarketsPage(),
          ),
        );
      },
    );
  }
}
