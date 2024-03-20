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
  TypedReducer<AppState, UserAction>(_userAction),
  TypedReducer<AppState, GetProductsStart>(_getProductsStart),
  TypedReducer<AppState, GetProductsSuccessful>(_getProductsSuccessful),
  TypedReducer<AppState, GetProductsError>(_getProductsError),
  TypedReducer<AppState, GetUserProductsSuccessful>(_getUserProductsSuccessful),
  TypedReducer<AppState, GetUserProductsError>(_getUserProductsError),
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AppState, UpdateUserProductsListSuccessful>(_updateUserProductsListSuccessful),
  TypedReducer<AppState, GetGroceryListsSuccessful>(_getGroceryListsSuccessful),
]);

AppState _userAction(AppState state, UserAction action) {
  return state.copyWith(user: action.user);
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return state.copyWith(user: null);
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

AppState _getUserProductsSuccessful(AppState state, GetUserProductsSuccessful action) {
  return state.copyWith(isLoading: false, user: state.user?.copyWith(userProductList: action.products));
}

AppState _getUserProductsError(AppState state, GetUserProductsError action) {
  return state.copyWith(isLoading: true);
}

AppState _updateUserProductsListSuccessful(AppState state, UpdateUserProductsListSuccessful action) {
  final AppUser user = state.user!.copyWith(userProductList: action.userProductsList!);

  return state.copyWith(user: user);
}

AppState _getGroceryListsSuccessful(AppState state, GetGroceryListsSuccessful action) {
  return state.copyWith(groceryLists: <GroceryList>{...state.groceryLists, ...action.groceryLists}.toList());
}
