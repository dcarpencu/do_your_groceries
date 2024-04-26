import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/containers/search_products_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
// import 'package:skeletonizer/skeletonizer.dart';

class SearchProductsPage extends StatefulWidget {
  const SearchProductsPage(this.marketName, {required this.category, super.key});

  final String marketName;
  final String category;

  @override
  State<SearchProductsPage> createState() => _SearchProductsPageState();
}

class _SearchProductsPageState extends State<SearchProductsPage> {
  late Store<AppState> _store;
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _store = StoreProvider.of<AppState>(context, listen: false);
    _store.dispatch(
      GetSuperMarketProducts.start(
        supermarketName: widget.marketName,
        category: widget.category,
        _onResult,
      ),
    );
    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    final double extent = _controller.position.maxScrollExtent;
    final double offset = _controller.offset;
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    final bool isLoading = <String>[GetSuperMarketProducts.pendingKey, GetSuperMarketProducts.pendingKeyMore]
        .any(store.state.pending.contains);
    if (offset >= extent - MediaQuery
        .of(context)
        .size
        .height && !isLoading) {
      store.dispatch(
        GetSuperMarketProducts.more(supermarketName: widget.marketName, category: widget.category, _onResult),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _store.dispatch(const SetMarketProductsToEmpty());
  }

  void _onResult(AppAction action) {
    if (action is GetSuperMarketProductsSuccessful) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Page loaded.')));
    } else if (action is GetSuperMarketProductsError) {
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
          body: PendingContainer(
            builder: (BuildContext context, Set<String> pending) {
              return SearchProductsContainer(
                builder: (BuildContext context, List<Product> products) {
                  final bool isLoading = state.pending.contains(GetSuperMarketProducts.pendingKey);
                  final bool isLoadingMore = state.pending.contains(GetSuperMarketProducts.pendingKeyMore);

                  if (isLoading && products.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  return GridView.builder(
                    padding: const EdgeInsets.all(8),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                    itemCount: products.length + (isLoadingMore ? 2 : 0),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == products.length) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      final Product product = products[index];

                      // TODO(dcarpencu): Implement Skeletonizer

                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                          gradient: const LinearGradient(
                            colors: <Color>[
                              Colors.orangeAccent,
                              Colors.deepOrangeAccent,
                            ],
                          ),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            // print('Pressed button!');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    product.image,
                                    height: 100,
                                    width: 100,
                                    loadingBuilder:
                                        (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                      if (loadingProgress == null) {
                                        return child;
                                      }
                                      return Center(
                                        child: CircularProgressIndicator(
                                          value: loadingProgress.expectedTotalBytes != null
                                              ? loadingProgress.cumulativeBytesLoaded /
                                              loadingProgress.expectedTotalBytes!
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
                                child: Text(
                                  '${product.price} RON',
                                  style: const TextStyle(color: Colors.black45, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
