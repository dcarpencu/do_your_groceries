part of 'index.dart';

@freezed
class GetSupermarketProductsNew with _$GetSupermarketProductsNew implements AppAction {
  const factory GetSupermarketProductsNew({required String supermarketName,
    required String category,
    required int pageNumber,}) = GetSupermarketProductsNewStart;

  const factory GetSupermarketProductsNew.successful(List<Product> groceryListProducts) = GetSupermarketProductsNewSuccessful;

  @Implements<ErrorAction>()
  const factory GetSupermarketProductsNew.error(Object error, StackTrace stackTrace) = GetSupermarketProductsNewError;
}
