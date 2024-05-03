import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/containers/products_container.dart';
import 'package:do_you_groceries/src/containers/selected_list_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/products/create_product_page.dart';
import 'package:do_you_groceries/src/presentation/supermarkets/markets_page.dart';
import 'package:do_you_groceries/src/ui_elements/bottom_app_bar.dart';
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
    _store..dispatch(ListenForProductsDone(_store.state.selectedGroceryList!))..dispatch(const SetUnselectedList());

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
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // if (products.isNotEmpty)
                      Expanded(
                        child: ListView.builder(
                          itemCount: products.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Product product = products[index];
                            return Hero(
                              tag: product.productId,
                              child: Material(
                                child: Card(
                                  child: ListTile(
                                    leading:
                                    product.image.isEmpty ? const FlutterLogo(size: 72) : SizedBox(
                                      height: 72, child: Image.network(product.image),),
                                    title: Text(product.name),
                                    subtitle: Text('${product.price} RON'),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute<Widget>(
                                          builder: (BuildContext context) {
                                            return Scaffold(
                                              appBar: AppBar(title: const Text('')),
                                              body: Center(
                                                child: Hero(
                                                  tag: '${product.productId} tag',
                                                  child: Material(
                                                    child: Column(
                                                      children: <Widget>[
                                                        Text(
                                                          product.name,
                                                          style: const TextStyle(fontSize: 36),
                                                        ),
                                                        const SizedBox(
                                                          height: 16,
                                                        ),
                                                        Text(
                                                          '${product.price} Lei',
                                                          style: const TextStyle(fontSize: 28),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      // else
                      //   const Center(
                      //     child: Text('No products YET.\nPlease add some!'),
                      //   ),
                    ],
                  );
                },
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<Widget>(builder: (BuildContext context) => const CreateProductPage()),
              );
              // Navigator.pushNamed(context, '/login');
            },
            tooltip: 'Create',
            child: const Icon(Icons.add),
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
