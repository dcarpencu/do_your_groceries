import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/supermarkets_api.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class SupermarketEpic {
  SupermarketEpic(this._superMarketsApi);


  final SuperMarketsApi _superMarketsApi;

  Epic<AppState> getEpics() {
    return combineEpics(
        <Epic<AppState>>[
          TypedEpic<AppState, GetSupermarketProductsNewStart>(_getSupermarketProductsNewStart).call,
          _getSuperMarketProducts,
        ]);
  }

  Stream<AppAction> _getSupermarketProductsNewStart(Stream<GetSupermarketProductsNewStart> actions,
      EpicStore<AppState> store,) {
    return actions.flatMap((GetSupermarketProductsNewStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) =>
            _superMarketsApi.getSuperMarketProducts(
              supermarketName: action.supermarketName,
              category: action.category,
              pageNumber: store.state.pageNumber,
            ),
      )
          .map<GetSupermarketProductsNew>(GetSupermarketProductsNew.successful)
          .onErrorReturnWith(GetSupermarketProductsNew.error);
    });
  }

  Stream<AppAction> _getSuperMarketProducts(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions
        .where((dynamic action) => action is GetSuperMarketProductsStart || action is GetSuperMarketProductsMore)
        .flatMap((dynamic action) {
      String pendingId = '';
      String superMarketName = '';
      String category = '';
      ActionResult onResult = (_) {};
      if (action is GetSuperMarketProductsStart) {
        pendingId = action.pendingId;
        onResult = action.onResult;
        superMarketName = action.supermarketName;
        category = action.category;
      } else if (action is GetSuperMarketProductsMore) {
        pendingId = action.pendingId;
        onResult = action.onResult;
        superMarketName = action.supermarketName;
        category = action.category;
      }

      return Stream<void>.value(null)
          .asyncMap(
            (_) => _superMarketsApi.getSuperMarketProducts(
          supermarketName: superMarketName,
          category: category,
          pageNumber: store.state.pageNumber,
        ),
      )
          .map<GetSuperMarketProducts>((List<Product> products) {
        return GetSuperMarketProducts.successful(products, pendingId);
      })
          .onErrorReturnWith(
            (Object error, StackTrace stackTrace) => GetSuperMarketProducts.error(error, stackTrace, pendingId),
      )
          .doOnData(onResult);
    });
  }

}