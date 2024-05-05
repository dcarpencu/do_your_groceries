import 'package:do_you_groceries/src/data/market_links.dart';
import 'package:do_you_groceries/src/ui_elements/components/view_product_card_widget.dart';
import 'package:flutter/material.dart';

class MarketsPage extends StatelessWidget {
  const MarketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available markets'),
      ),
      body: ListView.builder(
        itemCount: marketsNames.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return ViewProductCard(
            marketName: marketsNames[index],
            marketImage: marketsPictures[index],
          );
          //   Card(
          //   clipBehavior: Clip.antiAlias,
          //   child: Column(
          //     children: <Widget>[
          //       ListTile(
          //         leading: const Icon(Icons.shopping_cart),
          //         title: Text(marketsNames[index]),
          //         subtitle: Text(
          //           'Secondary Text',
          //           style: TextStyle(color: Colors.black.withOpacity(0.6)),
          //         ),
          //       ),
          //       Row(
          //         children: <Widget>[
          //           TextButton(
          //             onPressed: () {
          //               Navigator.push(
          //                 context,
          //                 MaterialPageRoute<Widget>(
          //                   builder: (BuildContext context) => SupermarketCategoriesPage(
          //                     supermarketName: marketsNames[index],
          //                   ),
          //                 ),
          //               );
          //             },
          //             child: const Text('Check products'),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // );
        },
      ),
    );
  }
}
