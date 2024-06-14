part of 'index.dart';

@freezed
class SwitchProduct with _$SwitchProduct implements AppAction {
  const factory SwitchProduct({required Product selectedProduct,
    required Product oldProduct,}) = SwitchProductStart;

  const factory SwitchProduct.successful(List<Product> productsToSwitch) = SwitchProductSuccessful;

  @Implements<ErrorAction>()
  const factory SwitchProduct.error(Object error, StackTrace stackTrace) = SwitchProductError;
}
