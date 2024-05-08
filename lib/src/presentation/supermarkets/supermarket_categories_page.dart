import 'package:do_you_groceries/src/data/market_links.dart';
import 'package:do_you_groceries/src/presentation/supermarkets/search_page.dart';
import 'package:do_you_groceries/src/ui_elements/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          final String item = supermarketCategroyIcons[index];
          return Container(
            decoration: BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.circular(16)),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: SvgPicture.asset(
                      'assets/categoryIcons/$item',
                    ),
                  ),
                  Align(
                    child: Text(
                      supermarketCategoryLabels[index],
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
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
