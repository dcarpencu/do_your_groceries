part of 'index.dart';

@freezed
class CreateProduct with _$CreateProduct implements AppAction {
  const factory CreateProduct(
    String name,
    double price,
  ) = CreateProductStart;

  const factory CreateProduct.successful() = CreateProductSuccessful;

  @Implements<ErrorAction>()
  const factory CreateProduct.error(Object error, StackTrace stackTrace) = CreateProductError;
}
