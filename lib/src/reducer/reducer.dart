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
  TypedReducer<AppState, RemoveRequestSimple>(_removeRequestSimple).call,
  TypedReducer<AppState, OnProductsEvent>(_onProductsEvent).call,
  TypedReducer<AppState, OnRequestsEvent>(_onRequestsEvent).call,
  TypedReducer<AppState, CreateGroceryListSuccessful>(_createGroceryListSuccessful).call,
  TypedReducer<AppState, GetSuperMarketProductsSuccessful>(_getSuperMarketProductsSuccessful).call,
  TypedReducer<AppState, ActionStart>(_actionStart).call,
  TypedReducer<AppState, ActionDone>(_actionDone).call,
  TypedReducer<AppState, GetCamerasSuccessful>(_getCamerasSuccessful).call,
  TypedReducer<AppState, TakePictureSuccessful>(_takePictureSuccessful).call,
  TypedReducer<AppState, GetProductsSuccessful>(_getProductsSuccessful).call,
  //TypedReducer<AppState, GenerateRecipeResponseSuccessful>(_generateRecipeResponseSuccessful).call,
  TypedReducer<AppState, GetProductsForCameraSuccessful>(_getProductsForCameraSuccessful).call,
  TypedReducer<AppState, RemoveProductSimple>(_removeProductSimple).call,
  TypedReducer<AppState, RemoveGroceryListSimple>(_removeGroceryListSimple).call,
  TypedReducer<AppState, GetUsersSuccessful>(_getUsersSuccessful).call,
  TypedReducer<AppState, SetNotificationOn>(_setNotificationOn).call,
  TypedReducer<AppState, SetNotificationOff>(_setNotificationOff).call,
  TypedReducer<AppState, UpdateGroceryListsStart>(_updateGroceryListsStart).call,
  TypedReducer<AppState, UpdateGroceryListsError>(_updateGroceryListsError).call,
  TypedReducer<AppState, AcceptRequestSuccessful>(_acceptRequestSuccessful).call,
  TypedReducer<AppState, SetCuisineFilterSelection>(_setCuisineFilterSelection).call,
  TypedReducer<AppState, SetBasicIngredientsFilterSelection>(_setBasicIngredientsFilterSelection).call,
  TypedReducer<AppState, SetDietaryRestrictionsFilterSelection>(_setDietaryRestrictionsFilterSelection).call,
  TypedReducer<AppState, EditGroceryListSuccessful>(_editGroceryListSuccessful).call,
  //TypedReducer<AppState, EditProductSuccessful>(_editProductSuccessful).call,
  TypedReducer<AppState, GetSupermarketProductsNewSuccessful>(_getSupermarketProductsNewSuccessful).call,
  TypedReducer<AppState, GetProductsAfterEditSuccessful>(_getProductsAfterEditSuccessful).call,
  TypedReducer<AppState, SwitchProductSuccessful>(_switchProductSuccessful).call,
]);

AppState _setMarketProductsToEmpty(AppState state, SetMarketProductsToEmpty action) {
  return state.copyWith(supermarketProducts: <Product>[], pageNumber: 1, productsFinished: false);
}

AppState _setNotificationOn(AppState state, SetNotificationOn action) {
  return state.copyWith(isNotifications: true);
}

AppState _setNotificationOff(AppState state, SetNotificationOff action) {
  return state.copyWith(isNotifications: false);
}

AppState _userAction(AppState state, UserAction action) {
  return state.copyWith(user: action.user);
}

AppState _logoutSuccessful(AppState state, LogoutSuccessful action) {
  return state.copyWith(user: null, groceryLists: <GroceryList>{});
}

AppState _getProductsSuccessful(AppState state, GetProductsSuccessful action) {
  return state.copyWith(relatedProducts: action.productsList);
}

AppState _getProductsForCameraSuccessful(AppState state, GetProductsForCameraSuccessful action) {
  return state.copyWith(relatedProducts: action.productsList);
}

AppState _getUsersSuccessful(AppState state, GetUsersSuccessful action) {
  return state.copyWith(users: action.users);
}

AppState _getGroceryListsSuccessful(AppState state, GetGroceryListsSuccessful action) {
  return state.copyWith(groceryLists: action.groceryLists);
}

AppState _getGroceryListsError(AppState state, GetGroceryListsError action) {
  return state.copyWith(groceryLists: <GroceryList>{});
}

AppState _setSelectedList(AppState state, SetSelectedList action) {
  return state.copyWith(
    selectedGroceryList: action.selectedGroceryList,
  );
}

AppState _setUnselectedList(AppState state, SetUnselectedList action) {
  return state.copyWith(selectedGroceryList: null, productsGroceryList: <Product>[]);
}

AppState _onProductsEvent(AppState state, OnProductsEvent action) {
  return state.copyWith(productsGroceryList: <Product>{...state.productsGroceryList, ...action.products}.toList());
}

AppState _onRequestsEvent(AppState state, OnRequestsEvent action) {
  return state.copyWith(requests: <AddRequest>{...state.requests, ...action.requests}.toList());
}

AppState _createGroceryListSuccessful(AppState state, CreateGroceryListSuccessful action) {
  return state.copyWith(groceryLists: <GroceryList>{action.groceryList, ...state.groceryLists});
}

AppState _editGroceryListSuccessful(AppState state, EditGroceryListSuccessful action) {
  final List<GroceryList> groceryListsRM = <GroceryList>[...state.groceryLists]..remove(action.groceryLists[0]);
  return state.copyWith(groceryLists: <GroceryList>{action.groceryLists[1], ...groceryListsRM});
}


AppState _getSuperMarketProductsSuccessful(AppState state, GetSuperMarketProductsSuccessful action) {
  // if (state.pageNumber == 1) {
  //   return state.copyWith(
  //     supermarketProducts: <Product>[...action.supermarketProducts],
  //   );
  // } else {

  if (action.supermarketProducts.isNotEmpty) {
    return state.copyWith(
      pageNumber: state.pageNumber + 1,
      supermarketProducts: <Product>[...state.supermarketProducts, ...action.supermarketProducts],
    );
  } else {
    return state.copyWith(productsFinished: true);
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
  return state.copyWith(takenPicture: action.takenPicture);
}

AppState _setPictureToNull(AppState state, SetPictureToNull action) {
  return state.copyWith(takenPicture: null);
}

AppState _removeProductSimple(AppState state, RemoveProductSimple action) {
  return state.copyWith(productsGroceryList: <Product>[...state.productsGroceryList]..remove(action.product));
}

AppState _removeGroceryListSimple(AppState state, RemoveGroceryListSimple action) {
  return state.copyWith(groceryLists: <GroceryList>{...state.groceryLists}..remove(action.groceryList));
}

AppState _removeRequestSimple(AppState state, RemoveRequestSimple action) {
  return state.copyWith(requests: <AddRequest>[...state.requests]..remove(action.request));
}

AppState _updateGroceryListsError(AppState state, UpdateGroceryListsError action) {
  final List<String> groceryListIds = <String>[...state.user!.groceryListIds];
  if (action.remove) {
    groceryListIds.add(action.groceryListId);
  } else {
    groceryListIds.remove(action.groceryListId);
  }
  final AppUser user = state.user!.copyWith(groceryListIds: groceryListIds);
  return state.copyWith(user: user);
}

AppState _updateGroceryListsStart(AppState state, UpdateGroceryListsStart action) {
  final List<String> groceryListIds = <String>[...state.user!.groceryListIds];
  if (action.remove) {
    groceryListIds.remove(action.groceryListId);
  } else {
    groceryListIds.add(action.groceryListId);
  }
  final AppUser user = state.user!.copyWith(groceryListIds: groceryListIds);
  return state.copyWith(user: user);
}

AppState _acceptRequestSuccessful(AppState state, AcceptRequestSuccessful action) {
  return state.copyWith(requests: <AddRequest>[...state.requests]..remove(action.requestToRemove));
}

// AppState _generateRecipeResponseSuccessful(AppState state, GenerateRecipeResponseSuccessful action) {
//   return state.copyWith(generatorResponse: action.response);
// }

AppState _setCuisineFilterSelection(AppState state, SetCuisineFilterSelection action) {
  return state.copyWith(cuisineText: action.selectedItems);
}

AppState _setBasicIngredientsFilterSelection(AppState state, SetBasicIngredientsFilterSelection action) {
  return state.copyWith(basicIngredientsText: action.selectedItems);
}

AppState _setDietaryRestrictionsFilterSelection(AppState state, SetDietaryRestrictionsFilterSelection action) {
  return state.copyWith(dietaryRestrictionsText: action.selectedItems);
}

AppState _getSupermarketProductsNewSuccessful(AppState state, GetSupermarketProductsNewSuccessful action) {
  return state.copyWith(
    pageNumber: state.pageNumber + 1,
    supermarketProducts: <Product>[...state.supermarketProducts, ...action.groceryListProducts],
  );
}

AppState _getProductsAfterEditSuccessful(AppState state, GetProductsAfterEditSuccessful action) {
  return state.copyWith(productsGroceryList: action.productsAfterEdit);
}

AppState _switchProductSuccessful(AppState state, SwitchProductSuccessful action) {
  return state.copyWith(productsGroceryList: <Product>[...state.productsGroceryList]..remove(action.productToSwitch));
}
