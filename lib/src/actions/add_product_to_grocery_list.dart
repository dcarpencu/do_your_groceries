part of 'index.dart';

const String _kAddProductToGroceryListPendingId = 'AddProductToGroceryList';

@freezed
class AddProductToGroceryList with _$AddProductToGroceryList implements AppAction {
  @Implements<ActionStart>()
  const factory AddProductToGroceryList.start(Product product,
      String groceryListId, {
    @Default(_kAddProductToGroceryListPendingId) String pendingId,
  }) = AddProductToGroceryListStart;

  @Implements<ActionDone>()
  const factory AddProductToGroceryList.successful([
    @Default(_kAddProductToGroceryListPendingId) String pendingId,
  ]) = AddProductToGroceryListSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory AddProductToGroceryList.error(
    Object error, StackTrace stackTrace, [
    @Default(_kAddProductToGroceryListPendingId) String pendingId,
  ]) = AddProductToGroceryListError;

  static String get pendingKey => _kAddProductToGroceryListPendingId;
}
