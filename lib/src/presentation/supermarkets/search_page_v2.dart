// import 'package:do_you_groceries/src/actions/index.dart';
// import 'package:do_you_groceries/src/containers/pending_container.dart';
// import 'package:do_you_groceries/src/containers/search_products_container.dart';
// import 'package:do_you_groceries/src/models/index.dart';
// import 'package:do_you_groceries/src/ui_elements/components/model_item_widget.dart';
// import 'package:do_you_groceries/src/ui_elements/components/pagination_scroll_controller.dart';
// import 'package:do_you_groceries/src/ui_elements/components/shimmer_item_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
// import 'package:redux/redux.dart';
//
// class SearchProductsPage extends StatefulWidget {
//   const SearchProductsPage({
//     required this.marketName,
//     required this.category,
//     required this.supermarketCategoryLabel,
//     required this.supermarketCategory,
//     super.key,
//   });
//
//   final String marketName;
//   final String category;
//   final String supermarketCategoryLabel;
//   final String supermarketCategory;
//
//   @override
//   State<SearchProductsPage> createState() => _SearchProductsPageState();
// }
//
// class _SearchProductsPageState extends State<SearchProductsPage> {
//   late Store<AppState> _store;
//   final ScrollController _controller = ScrollController();
//   final int _pageSize = 20;
//   PaginationScrollController paginationScrollController = PaginationScrollController();
//
//   final PagingController<int, dynamic> _pagingController = PagingController<int, dynamic>(firstPageKey: 1);
//
//   @override
//   void initState() {
//     super.initState();
//     _store = StoreProvider.of<AppState>(context, listen: false);
//     paginationScrollController.init(
//         loadAction: () => context.read<RequestCubit>().getNewRequests());
//     _store.dispatch(
//       GetSuperMarketProducts.start(
//         supermarketName: widget.marketName,
//         category: widget.category,
//         _onResult,
//       ),
//     );
//     _controller.addListener(_onScroll);
//   }
//
//   void _onScroll() {
//     final double extent = _controller.position.maxScrollExtent;
//     final double offset = _controller.offset;
//
//     final bool isLoading = <String>[GetSuperMarketProducts.pendingKey, GetSuperMarketProducts.pendingKeyMore]
//         .any(_store.state.pending.contains);
//
//     // if(isLoading) {}
//     // print('\n\n\n CONTAINS A LOADING FLAG \n\n\n');
//
//     if (offset >= extent - MediaQuery.of(context).size.height && !isLoading) {
//       _store.dispatch(
//         GetSuperMarketProducts.more(supermarketName: widget.marketName, category: widget.category, _onResult),
//       );
//     }
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     _store.dispatch(const SetMarketProductsToEmpty());
//     super.dispose();
//   }
//
//   void _onResult(AppAction action) {
//     if (action is GetSuperMarketProductsError) {
//       final Object error = action.error;
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('An error has occurred $error')));
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, AppState>(
//       converter: (Store<AppState> store) => store.state,
//       builder: (BuildContext context, AppState state) {
//         return Scaffold(
//           appBar: AppBar(title:Text('${_store.state.pageNumber}')),
//           body: SafeArea(
//             child: PendingContainer(
//               builder: (BuildContext context, Set<String> pending) {
//                 return SearchProductsContainer(
//                   builder: (BuildContext context, List<Product> products) {
//                     final bool isLoading = state.pending.contains(GetSuperMarketProducts.pendingKey);
//                     final bool isLoadingMore = state.pending.contains(GetSuperMarketProducts.pendingKeyMore);
//
//                     if (isLoading && products.isEmpty) {
//                       return ListView.builder(
//                         itemBuilder: (BuildContext context, int i) {
//                           return const ShimmerItem();
//                         },
//                         itemCount: 7,
//                       );
//                     }
//
//                     return ListView.builder(
//                       controller: _controller,
//                       padding: const EdgeInsets.all(8),
//                       itemCount: products.length + (isLoadingMore ? 1 : 0),
//                       itemBuilder: (BuildContext context, int index) {
//                         if (index == products.length) {
//                           return const Center(child: LinearProgressIndicator());
//                         }
//                         final Product product = products[index];
//
//                         return ModelItem(
//                           store: _store,
//                           model: product,
//                           marketName: widget.marketName,
//                           category: widget.supermarketCategory,
//                         );
//                       },
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
