part of 'index.dart';

@freezed
class EditProduct with _$EditProduct implements AppAction {
  const factory EditProduct({
    required String name,
    required double price,
    required String image,
    required Product product,
  }) = EditProductStart;

  const factory EditProduct.successful() = EditProductSuccessful;

  @Implements<ErrorAction>()
  const factory EditProduct.error(Object error, StackTrace stackTrace) = EditProductError;
}
