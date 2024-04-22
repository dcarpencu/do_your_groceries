import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/search_products_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchProductsPage extends StatefulWidget {
  const SearchProductsPage(this.marketName, {super.key});

  final String marketName;

  @override
  State<SearchProductsPage> createState() => _SearchProductsPageState();
}

class _SearchProductsPageState extends State<SearchProductsPage> {
  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false)
        .dispatch(GetSuperMarketProducts(supermarketName: widget.marketName, _onResult));
  }

  void _onResult(AppAction action) {
    if (action is GetCurrentUserSuccessful) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Page loaded.')));
    } else if (action is GetProductsError) {
      final Object error = action.error;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error has occurred $error')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('${widget.marketName} products'),
          ),
          body: SearchProductsContainer(
            builder: (BuildContext context, List<Product> products) {
              if (state.isLoading && products.isEmpty) {
                return const Center(child: CircularProgressIndicator());
              }
              return GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16,),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  final Product product = products[index];

                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue,
                        gradient: const LinearGradient(
                          colors: <Color>[
                            Colors.orangeAccent,
                            Colors.deepOrangeAccent,
                          ],
                        )),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                      onPressed: () {
                        print('Pressed button!');
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(120),
                              child: Image.network(
                                product.image,
                                height: 100,
                                width: 100,
                                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                  if (loadingProgress == null) {
                                    return child;
                                  }
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value: loadingProgress.expectedTotalBytes != null
                                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                          : null,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Align(
                            child: Text(
                              product.name,
                              style: const TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                          Align(
                            child: Text('${product.price} RON', style: const TextStyle(color: Colors.black45, fontWeight: FontWeight.w600),),
                          ),
                        ],
                      ),
                    ),
                  );

                  //   Container(
                  //   padding: EdgeInsets.all(8),
                  //   color: Colors.blue,
                  //   child: Column(
                  //     children: <Widget>[
                  //       SizedBox(
                  //         height: 100,
                  //         width: 100,
                  //         child: Image.network(product.image),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(8.0),
                  //         child: Text(product.name, style: const TextStyle(fontSize: 16),),
                  //       ),
                  //       Text('${product.price} RON'),
                  //       SizedBox(height: 8,),
                  //     ],
                  //   ),
                  // );
                },
              );
            },
          ),
        );
      },
    );
  }
}
