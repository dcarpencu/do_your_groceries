part of 'index.dart';

const String _kGetGroceryListsPendingId = 'GetGroceryLists';

@freezed
class GetGroceryLists with _$GetGroceryLists implements AppAction {
  @Implements<ActionStart>()
  const factory GetGroceryLists.start({
    @Default(_kGetGroceryListsPendingId) String pendingId,
  }) = GetGroceryListsStart;

  @Implements<ActionDone>()
  const factory GetGroceryLists.successful(
    Set<GroceryList> groceryLists, [
    @Default(_kGetGroceryListsPendingId) String pendingId,
  ]) = GetGroceryListsSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetGroceryLists.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetGroceryListsPendingId) String pendingId,
  ]) = GetGroceryListsError;

  static String get pendingKey => _kGetGroceryListsPendingId;
}
