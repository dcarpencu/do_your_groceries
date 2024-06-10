part of 'index.dart';

@freezed
class CreateProduct with _$CreateProduct implements AppAction {
  const factory CreateProduct({
    required String image,
    required String name,
    required double price,
    required bool createdByUser,
  }) = CreateProductStart;

  const factory CreateProduct.successful() = CreateProductSuccessful;

  @Implements<ErrorAction>()
  const factory CreateProduct.error(Object error, StackTrace stackTrace) = CreateProductError;
}
