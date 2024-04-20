import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is! AppAction) {
    throw ArgumentError('All actions should implement AppAction');
  }

  if (action is ErrorAction) {
    if (kDebugMode) {
      print('Error occurred!');
    }
  }

  final AppState newState = _reducer(state, action);
  if (kDebugMode) {
    print(newState);
  }
  return newState;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, UserAction>(_userAction).call,
  TypedReducer<AppState, GetProductsStart>(_getProductsStart).call,
  TypedReducer<AppState, GetProductsSuccessful>(_getProductsSuccessful).call,
  TypedReducer<AppState, GetProductsError>(_getProductsError).call,
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful).call,
  TypedReducer<AppState, GetGroceryListsSuccessful>(_getGroceryListsSuccessful).call,
  TypedReducer<AppState, GetGroceryListsError>(_getGroceryListsError).call,
  TypedReducer<AppState, SetSelectedList>(_setSelectedList).call,
  TypedReducer<AppState, OnProductsEvent>(_onProductsEvent).call,
  TypedReducer<AppState, CreateGroceryListSuccessful>(_createGroceryListSuccessful).call,
]);

AppState _userAction(AppState state, UserAction action) {
  return state.copyWith(user: action.user);
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return state.copyWith(user: null, groceryLists: <GroceryList>{});
}

AppState _getProductsStart(AppState state, GetProductsStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getProductsSuccessful(AppState state, GetProductsSuccessful action) {
  return state.copyWith(isLoading: false, products: action.products);
}

AppState _getProductsError(AppState state, GetProductsError action) {
  return state.copyWith(isLoading: true);
}

AppState _getGroceryListsSuccessful(AppState state, GetGroceryListsSuccessful action) {
  return state.copyWith(groceryLists: action.groceryLists, isAppStartup: false);
}

AppState _getGroceryListsError(AppState state, GetGroceryListsError action) {
  return state.copyWith(groceryLists: <GroceryList>{}, isAppStartup: true);
}

AppState _setSelectedList(AppState state, SetSelectedList action) {
  return state.copyWith(selectedGroceryList: action.selectedGroceryList);
}

// AppState _setCreatedGroceryList(AppState state, SetCreatedGroceryList action) {
//   return state.copyWith(user: action.user)
// }

AppState _onProductsEvent(AppState state, OnProductsEvent action) {
  return state.copyWith(productsList: <Product>{...state.productsList, ...action.products}.toList());
}

AppState _createGroceryListSuccessful(AppState state, CreateGroceryListSuccessful action) {
  return state.copyWith(groceryLists: <GroceryList>{action.groceryList, ...state.groceryLists});
}
