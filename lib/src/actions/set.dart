part of 'index.dart';

@freezed
class SetSelectedList with _$SetSelectedList implements AppAction {
  const factory SetSelectedList(String selectedGroceryList) = SetSelectedList$;
}

@freezed
class SetCreatedGroceryList with _$SetCreatedGroceryList implements AppAction {
  const factory SetCreatedGroceryList(String groceryListId) = SetCreatedGroceryList$;
}

