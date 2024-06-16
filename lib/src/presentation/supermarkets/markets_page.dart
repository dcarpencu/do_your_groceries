import 'package:do_you_groceries/src/data/market_links.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/ui_elements/components/back_button.dart';
import 'package:do_you_groceries/src/ui_elements/components/view_product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

class MarketsPage extends StatelessWidget {
  const MarketsPage({required this.store, super.key});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 56,
          ),
          const BackButtonCustom(),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
              child: ListView.builder(
                itemCount: marketsNames.length,
                padding: const EdgeInsets.all(8),
                itemBuilder: (BuildContext context, int index) {
                  return ViewProductCard(
                    marketName: marketsNames[index],
                    marketImage: marketsPictures[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
