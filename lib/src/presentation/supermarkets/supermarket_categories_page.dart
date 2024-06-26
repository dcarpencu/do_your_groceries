import 'package:do_you_groceries/src/data/market_links.dart';
import 'package:do_you_groceries/src/ui_elements/components/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SupermarketCategoriesPage extends StatelessWidget {
  const SupermarketCategoriesPage({required this.supermarketName, super.key});

  final String supermarketName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          const BackButtonCustom(),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Categorii de produse în $supermarketName',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: GridView.builder(
                  itemCount: supermarketCategoryLabels.length,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  itemBuilder: (BuildContext context, int index) {
                    final String item = supermarketCategroyIcons[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.lightBlue.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {
                          context.pushNamed(
                            'searchProducts',
                            pathParameters: <String, String>{
                              'supermarketName': supermarketName,
                              'marketName': supermarketName,
                              'category': supermarketCategories[index],
                              'supermarketCategoryLabel': supermarketCategoryLabels[index],
                              'supermarketCategory': supermarketCategories[index],
                            },
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: SvgPicture.asset(
                                'assets/categoryIcons/$item',
                                width: 64,
                                height: 64,
                                colorFilter: const ColorFilter.mode(
                                  Colors.lightBlue,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              supermarketCategoryLabels[index],
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
