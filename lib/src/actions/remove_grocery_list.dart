part of 'index.dart';

@freezed
class RemoveGroceryList with _$RemoveGroceryList implements AppAction {
  const factory RemoveGroceryList({required GroceryList groceryList}) = RemoveGroceryListStart;

  const factory RemoveGroceryList.successful() = RemoveGroceryListSuccessful;

  @Implements<ErrorAction>()
  const factory RemoveGroceryList.error(Object error, StackTrace stackTrace) = RemoveGroceryListError;
}
