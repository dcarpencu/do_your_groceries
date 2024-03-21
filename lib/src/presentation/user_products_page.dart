import 'package:do_you_groceries/src/containers/products_container.dart';
import 'package:do_you_groceries/src/containers/selected_list_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';

import 'create_product_page.dart';

class UserProductsPage extends StatefulWidget {
  const UserProductsPage({Key? key}) : super(key: key);

  @override
  State<UserProductsPage> createState() => _UserProductsPageState();
}

class _UserProductsPageState extends State<UserProductsPage> {
  @override
  Widget build(BuildContext context) {
    return SelectedListContainer(
      builder: (BuildContext context, GroceryList groceryList) {
        return Scaffold(
          appBar: AppBar(
            title: Text(groceryList.title),
          ),
          body: ProductsContainer(
            builder: (BuildContext context, List<Product> products) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (products.isNotEmpty)
                    Expanded(
                      child: ListView.builder(
                        itemCount: products.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Product product = products[index];
                          return ListTile(
                            title: Text(product.name),
                            subtitle: Text('${product.price} RON'),
                          );
                        },
                      ),
                    )
                  else
                    const Center(
                      child: Text('No products YET.'),
                    ),
                ],
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                // ignore: always_specify_types
                MaterialPageRoute(builder: (BuildContext context) => const CreateProductPage()),
              );
            },
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
