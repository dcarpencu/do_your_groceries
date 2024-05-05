import 'package:do_you_groceries/src/data/market_links.dart';
import 'package:do_you_groceries/src/presentation/supermarkets/search_page.dart';
import 'package:flutter/material.dart';

class SupermarketCategoriesPage extends StatelessWidget {
  const SupermarketCategoriesPage({required this.supermarketName, super.key});

  final String supermarketName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories found in $supermarketName'),
      ),
      body: GridView.builder(
        itemCount: supermarketCategoryLabels.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.apple),
                  title: Text(supermarketCategoryLabels[index]),
                  subtitle: Text(
                    'Info',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<Widget>(
                            builder: (BuildContext context) => SearchProductsPage(
                              supermarketName,
                              category: supermarketCategories[index],
                              supermarketCategoryLabel: supermarketCategoryLabels[index],
                              supermarketCategory: supermarketCategories[index],
                            ),
                          ),
                        );
                      },
                      child: const Text('Check products'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('Add product'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
      ),
    );
  }
}
