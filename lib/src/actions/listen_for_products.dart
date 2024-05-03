part of 'index.dart';

const String _kListenForProductsPendingId = 'ListenForProducts';

@freezed
class ListenForProducts with _$ListenForProducts implements AppAction {
  @Implements<ActionStart>()
  const factory ListenForProducts.start(
    String groceryListTitle, {
    @Default(_kListenForProductsPendingId) String pendingId,
  }) = ListenForProductsStart;

  @Implements<ActionDone>()
  const factory ListenForProducts.done(
    String groceryListTitle, [
    @Default(_kListenForProductsPendingId) String pendingId,
  ]) = ListenForProductsDone;

  @Implements<ActionDone>()
  const factory ListenForProducts.event(
    List<Product> products, [
    @Default(_kListenForProductsPendingId) String pendingId,
  ]) = OnProductsEvent;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory ListenForProducts.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kListenForProductsPendingId) String pendingId,
  ]) = _ListenForProductsError;

  static String get pendingKey => _kListenForProductsPendingId;
}
