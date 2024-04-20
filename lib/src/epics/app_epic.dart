import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/auchan_api.dart';
import 'package:do_you_groceries/src/data/auth_api.dart';
import 'package:do_you_groceries/src/data/products_api.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class AppEpic {
  AppEpic(this._authApi, this._auchanApi, this._productsApi);

  final AuthApi _authApi;
  final AuchanApi _auchanApi;
  final ProductsApi _productsApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, LoginStart>(_loginStart).call,
      TypedEpic<AppState, GetCurrentUserStart>(_getCurrentUserStart).call,
      TypedEpic<AppState, CreateUserStart>(_createUserStart).call,
      TypedEpic<AppState, LogoutStart>(_logoutStart).call,
      TypedEpic<AppState, GetProductsStart>(_getProductsStart).call,
      TypedEpic<AppState, GetGroceryListsStart>(_getGroceryListsStart).call,
      TypedEpic<AppState, CreateGroceryListStart>(_createGroceryListStart).call,
      _listenForProducts,
      TypedEpic<AppState, CreateProductStart>(_createProductStart).call,
    ]);
  }

  Stream<AppAction> _loginStart(Stream<LoginStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LoginStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.login(email: action.email, password: action.password))
          .map<Login>(Login.successful)
          .onErrorReturnWith(Login.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _getCurrentUserStart(Stream<GetCurrentUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCurrentUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getCurrentUser())
          .map<GetCurrentUser>(GetCurrentUser.successful)
          .onErrorReturnWith(GetCurrentUser.error);
    });
  }

  Stream<AppAction> _createUserStart(Stream<CreateUserStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateUserStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.create(email: action.email, password: action.password, username: action.username))
          .map<CreateUser>(CreateUser.successful)
          .onErrorReturnWith(CreateUser.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _logoutStart(Stream<LogoutStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((LogoutStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.logout())
          .mapTo(const Logout.successful())
          .onErrorReturnWith(Logout.error);
    });
  }

  Stream<AppAction> _getProductsStart(Stream<GetProductsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetProductsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _auchanApi.getProducts())
          .map<GetProducts>(GetProducts.successful)
          .onErrorReturnWith(GetProducts.error)
          .doOnData(action.onResult);
    });
  }

  Stream<AppAction> _getGroceryListsStart(Stream<GetGroceryListsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetGroceryListsStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _authApi.getLists())
          .map<GetGroceryLists>(GetGroceryLists.successful)
          .onErrorReturnWith(GetGroceryLists.error);
    });
  }

  Stream<AppAction> _listenForProducts(Stream<dynamic> actions, EpicStore<AppState> store) {
    return actions.whereType<ListenForProductsStart>().flatMap((ListenForProductsStart action) {
      return _productsApi
          .listenForProducts(action.groceryListTitle)
          .map<ListenForProducts>(ListenForProducts.event)
          .takeUntil<dynamic>(
        actions.where((dynamic event) {
          return event is ListenForProductsDone && event.groceryListTitle == action.groceryListTitle;
        }),
      ).onErrorReturnWith(ListenForProducts.error);
    });
  }

  Stream<AppAction> _createProductStart(Stream<CreateProductStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateProductStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _productsApi.createProduct(
              groceryListId: store.state.selectedGroceryList!,
              name: action.name,
              price: action.price,
              uid: store.state.user!.uid,
            ),
          )
          .mapTo(const CreateProduct.successful())
          .onErrorReturnWith(CreateProduct.error);
    });
  }

  Stream<AppAction> _createGroceryListStart(Stream<CreateGroceryListStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((CreateGroceryListStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _authApi.createGroceryList(
              title: action.title,
              description: action.description,
              selectedIcon: action.selectedIcon,
            ),
          )
          .map<CreateGroceryList>(CreateGroceryList.successful)
          .onErrorReturnWith(CreateGroceryList.error);
    });
  }
}
