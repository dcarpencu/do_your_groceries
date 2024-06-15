part of 'index.dart';

const String _kCreateProductPendingId = 'CreateProduct';

@freezed
class CreateProduct with _$CreateProduct implements AppAction {
  @Implements<ActionStart>()
  const factory CreateProduct.start({
    required String image,
    required String name,
    required double price,
    required bool createdByUser,
    @Default(_kCreateProductPendingId) String pendingId,
  }) = CreateProductStart;

  @Implements<ActionDone>()
  const factory CreateProduct.successful([
    @Default(_kCreateProductPendingId) String pendingId,
  ]) = CreateProductSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory CreateProduct.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kCreateProductPendingId) String pendingId,
  ]) = CreateProductError;

  static String get pendingKey => _kCreateProductPendingId;
}
