part of 'index.dart';

@freezed
class GetGroceryLists with _$GetGroceryLists implements AppAction {
  const factory GetGroceryLists() = GetGroceryListsStart;

  const factory GetGroceryLists.successful(Set<GroceryList> groceryLists) = GetGroceryListsSuccessful;

  @Implements<ErrorAction>()
  const factory GetGroceryLists.error(Object error, StackTrace stackTrace) = GetGroceryListsError;
}
