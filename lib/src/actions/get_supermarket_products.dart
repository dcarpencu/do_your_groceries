part of 'index.dart';

const String _kGetSuperMarketProductsPendingId = 'GetSuperMarketProducts';
const String _kGetSuperMarketProductsMorePendingId = 'GetSuperMarketProductsMore';

@freezed
class GetSuperMarketProducts with _$GetSuperMarketProducts implements AppAction {
  @Implements<ActionStart>()
  const factory GetSuperMarketProducts.start(
    ActionResult onResult, {
    required String supermarketName,
    required String category,
    @Default(_kGetSuperMarketProductsPendingId) String pendingId,
  }) = GetSuperMarketProductsStart;

  @Implements<ActionStart>()
  const factory GetSuperMarketProducts.more(
    ActionResult onResult, {
    required String supermarketName,
    required String category,
    @Default(_kGetSuperMarketProductsPendingId) String pendingId,
  }) = GetSuperMarketProductsMore;

  @Implements<ActionDone>()
  const factory GetSuperMarketProducts.successful(
    List<Product> supermarketProducts,
    String pendingId,
  ) = GetSuperMarketProductsSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetSuperMarketProducts.error(
    Object error,
    StackTrace stackTrace,
    String pendingId,
  ) = GetSuperMarketProductsError;

  static String get pendingKey => _kGetSuperMarketProductsPendingId;

  static String get pendingKeyMore => _kGetSuperMarketProductsMorePendingId;
}
