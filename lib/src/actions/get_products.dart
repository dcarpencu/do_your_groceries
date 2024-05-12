part of 'index.dart';

const String _kGetProductsPendingId = 'GetProducts';

@freezed
class GetProducts with _$GetProducts implements AppAction {
  @Implements<ActionStart>()
  const factory GetProducts.start({required Product product,
    @Default(_kGetProductsPendingId) String pendingId,
  }) = GetProductsStart;

  @Implements<ActionDone>()
  const factory GetProducts.successful(List<Product> productsList, [
    @Default(_kGetProductsPendingId) String pendingId,
  ]) = GetProductsSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetProducts.error(
    Object error, StackTrace stackTrace, [
    @Default(_kGetProductsPendingId) String pendingId,
  ]) = GetProductsError;

  static String get pendingKey => _kGetProductsPendingId;
}

