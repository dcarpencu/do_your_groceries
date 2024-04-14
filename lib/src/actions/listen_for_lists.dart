part of 'index.dart';

@freezed
abstract class ListenForLists with _$ListenForLists implements AppAction {
  const factory ListenForLists.start() = ListenForListsStart;

  const factory ListenForLists.done() = ListenForListsDone;

  const factory ListenForLists.event(Set<GroceryList> groceryLists) = OnListsEvent;

  @Implements<ErrorAction>()
  const factory ListenForLists.error(Object error, StackTrace stackTrace) = _ListenForListsError;
}
