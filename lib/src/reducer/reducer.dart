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

  if (kDebugMode) {
    print(action);
  }

  final AppState newState = _reducer(state, action);
  if (kDebugMode) {
    print(newState);
  }
  return newState;
}

Reducer<AppState> _reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, UserAction>(_userAction).call,
  TypedReducer<AppState, GetProductsSuccessful>(_getProductsSuccessful).call,
  TypedReducer<AppState, LogoutSuccessful>(_logoutSuccessful).call,
  TypedReducer<AppState, GetGroceryListsSuccessful>(_getGroceryListsSuccessful).call,
  TypedReducer<AppState, GetGroceryListsError>(_getGroceryListsError).call,
  TypedReducer<AppState, SetSelectedList>(_setSelectedList).call,
  TypedReducer<AppState, SetUnselectedList>(_setUnselectedList).call,
  TypedReducer<AppState, SetSelectedCamera>(_setSelectedCamera).call,
  TypedReducer<AppState, SetPictureToNull>(_setPictureToNull).call,
  TypedReducer<AppState, SetMarketProductsToEmpty>(_setMarketProductsToEmpty).call,
  TypedReducer<AppState, OnProductsEvent>(_onProductsEvent).call,
  TypedReducer<AppState, CreateGroceryListSuccessful>(_createGroceryListSuccessful).call,
  TypedReducer<AppState, GetSuperMarketProductsSuccessful>(_getSuperMarketProductsSuccessful).call,
  TypedReducer<AppState, ActionStart>(_actionStart).call,
  TypedReducer<AppState, ActionDone>(_actionDone).call,
  TypedReducer<AppState, GetCamerasSuccessful>(_getCamerasSuccessful).call,
  TypedReducer<AppState, TakePictureSuccessful>(_takePictureSuccessful).call,
  TypedReducer<AppState, GetImageLabelsSuccessful>(_getImageLabelsSuccessful).call,
]);

AppState _setMarketProductsToEmpty(AppState state, SetMarketProductsToEmpty action) {
  return state.copyWith(supermarketProducts: <Product>[], pageNumber: 1, contentLoaded: false);
}

AppState _userAction(AppState state, UserAction action) {
  return state.copyWith(user: action.user);
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return state.copyWith(user: null, groceryLists: <GroceryList>{});
}

AppState _getProductsSuccessful(AppState state, GetProductsSuccessful action) {
  return state.copyWith(supermarketProducts: action.products);
}

AppState _getGroceryListsSuccessful(AppState state, GetGroceryListsSuccessful action) {
  return state.copyWith(groceryLists: action.groceryLists);
}

AppState _getGroceryListsError(AppState state, GetGroceryListsError action) {
  return state.copyWith(groceryLists: <GroceryList>{});
}

AppState _setSelectedList(AppState state, SetSelectedList action) {
  return state.copyWith(selectedGroceryList: action.selectedGroceryList);
}

AppState _setUnselectedList(AppState state, SetUnselectedList action) {
  return state.copyWith(selectedGroceryList: '', productsList: <Product>[]);
}

AppState _onProductsEvent(AppState state, OnProductsEvent action) {
  return state.copyWith(productsList: <Product>{...state.productsList, ...action.products}.toList());
}

AppState _createGroceryListSuccessful(AppState state, CreateGroceryListSuccessful action) {
  return state.copyWith(groceryLists: <GroceryList>{action.groceryList, ...state.groceryLists});
}

AppState _getSuperMarketProductsSuccessful(AppState state, GetSuperMarketProductsSuccessful action) {
  if (action.supermarketProducts.isNotEmpty) {
    return state.copyWith(
        pageNumber: state.pageNumber + 1,
        supermarketProducts: <Product>[...state.supermarketProducts, ...action.supermarketProducts]);
  } else {
    return state.copyWith(
        pageNumber: state.pageNumber + 1,
        supermarketProducts: <Product>[...state.supermarketProducts, ...action.supermarketProducts],
        contentLoaded: true);
  }
}

AppState _actionStart(AppState state, ActionStart action) {
  return state.copyWith(pending: <String>{...state.pending, action.pendingId});
}

AppState _actionDone(AppState state, ActionDone action) {
  return state.copyWith(pending: <String>{...state.pending}..remove(action.pendingId));
}

AppState _getCamerasSuccessful(AppState state, GetCamerasSuccessful action) {
  return state.copyWith(cameras: action.cameras);
}

AppState _setSelectedCamera(AppState state, SetSelectedCamera action) {
  return state.copyWith(selectedCamera: action.selectedCamera);
}

AppState _takePictureSuccessful(AppState state, TakePictureSuccessful action) {
  return state.copyWith(picture: action.picture);
}

AppState _setPictureToNull(AppState state, SetPictureToNull action) {
  return state.copyWith(picture: null);
}

AppState _getImageLabelsSuccessful(AppState state, GetImageLabelsSuccessful action) {
  return state.copyWith(imageLabel: action.imageLabel);
}
