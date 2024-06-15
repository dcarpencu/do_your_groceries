part of 'index.dart';

const String _kCreateGroceryListPendingId = 'CreateGroceryList';

@freezed
class CreateGroceryList with _$CreateGroceryList implements AppAction {
  @Implements<ActionStart>()
  const factory CreateGroceryList.start({
required String title,
required String description,
required String selectedIcon,
    @Default(_kCreateGroceryListPendingId) String pendingId,
  }) = CreateGroceryListStart;

  @Implements<ActionDone>()
  const factory CreateGroceryList.successful(GroceryList groceryList, [
    @Default(_kCreateGroceryListPendingId) String pendingId,
  ]) = CreateGroceryListSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory CreateGroceryList.error(
    Object error, StackTrace stackTrace, [
    @Default(_kCreateGroceryListPendingId) String pendingId,
  ]) = CreateGroceryListError;

  static String get pendingKey => _kCreateGroceryListPendingId;
}
