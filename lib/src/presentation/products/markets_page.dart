import 'package:do_you_groceries/src/presentation/products/search_page.dart';
import 'package:flutter/material.dart';

class MarketsPage extends StatelessWidget {
  const MarketsPage({super.key});

  static const List<String> marketsNames = <String>['Auchan', 'Lidl', 'Kaufland', 'Penny'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Markets'),
      ),
      body: ListView.builder(
        itemCount: marketsNames.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  title: Text(marketsNames[index]),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Row(
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<Widget>(builder: (BuildContext context) => const SearchProductsPage()),
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
      ),
    );
  }
}
