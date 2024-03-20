part of 'index.dart';

@freezed
abstract class ListenForGroceryLists with _$ListenForGroceryLists implements AppAction {
  const factory ListenForGroceryLists.start(String uid) = ListenForGroceryListsStart;

  const factory ListenForGroceryLists.done(String uid) = ListenForGroceryListsDone;

  const factory ListenForGroceryLists.event(Set<GroceryList> groceryLists) = OnGroceryListsEvent;

  @Implements<ErrorAction>()
  const factory ListenForGroceryLists.error(Object error, StackTrace stackTrace) = _ListenForGroceryListsError;
}
