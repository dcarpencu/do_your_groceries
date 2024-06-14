part of 'index.dart';

const String _kGetProductsForCameraPendingId = 'GetProductsForCamera';

@freezed
class GetProductsForCamera with _$GetProductsForCamera implements AppAction {
  @Implements<ActionStart>()
  const factory GetProductsForCamera.start({
    required String category,
    required String tag,
    @Default(_kGetProductsForCameraPendingId) String pendingId,
  }) = GetProductsForCameraStart;

  @Implements<ActionDone>()
  const factory GetProductsForCamera.successful(
    List<Product> productsList, [
    @Default(_kGetProductsForCameraPendingId) String pendingId,
  ]) = GetProductsForCameraSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetProductsForCamera.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetProductsForCameraPendingId) String pendingId,
  ]) = GetProductsForCameraError;

  static String get pendingKey => _kGetProductsForCameraPendingId;
}
