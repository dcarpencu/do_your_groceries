part of 'index.dart';

@freezed
class CreateGroceryList with _$CreateGroceryList implements AppAction {
  const factory CreateGroceryList(String title) = CreateGroceryListStart;

  const factory CreateGroceryList.successful(GroceryList groceryList) = CreateGroceryListSuccessful;

  @Implements<ErrorAction>()
  const factory CreateGroceryList.error(Object error, StackTrace stackTrace) = CreateGroceryListError;
}
