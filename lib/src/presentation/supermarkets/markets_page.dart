import 'package:do_you_groceries/src/data/market_links.dart';
import 'package:do_you_groceries/src/ui_elements/components/parrlax_page.dart';
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
      body:

      //const Center(child: ParallaxWidget())

      ListView.builder(
        itemCount: marketsNames.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (BuildContext context, int index) {
          return ViewProductCard(
            marketName: marketsNames[index],
            marketImage: marketsPictures[index],
          );
        },
      ),
    );
  }
}
