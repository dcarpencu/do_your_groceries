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
          // Stack(children: <Widget>[
          //   const BackgroundWave(
          //     height: 280,
          //   ),
          //   Positioned(
          //     top: 145,
          //     left: 40,
          //     child: Text(
          //       store.state.selectedGroceryList!.title,
          //       style: const TextStyle(
          //         color: Colors.white,
          //         fontSize: 32,
          //         fontFamily: 'Poppins',
          //         height: 1.2,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
          //   Positioned(
          //     top: 103,
          //     left: 256,
          //     child: SizedBox(
          //       height: 124,
          //       child: SvgPicture.asset(
          //         'assets/groceryListIcons/${store.state.selectedGroceryList!.selectedIcon}.svg',
          //         width: 100,
          //         height: 100,
          //       ),
          //     ),),
          // ],),
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
