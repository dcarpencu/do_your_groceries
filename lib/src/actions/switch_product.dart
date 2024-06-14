part of 'index.dart';

const String _kSwitchProductPendingId = 'SwitchProduct';

@freezed
class SwitchProduct with _$SwitchProduct implements AppAction {
  @Implements<ActionStart>()
  const factory SwitchProduct.start({
    required Product selectedProduct,
    required Product oldProduct,
    @Default(_kSwitchProductPendingId) String pendingId,
  }) = SwitchProductStart;

  @Implements<ActionDone>()
  const factory SwitchProduct.successful(
    Product productToSwitch, [
    @Default(_kSwitchProductPendingId) String pendingId,
  ]) = SwitchProductSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory SwitchProduct.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSwitchProductPendingId) String pendingId,
  ]) = SwitchProductError;

  static String get pendingKey => _kSwitchProductPendingId;
}
