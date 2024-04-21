part of 'index.dart';

@freezed
class GetSuperMarketProducts with _$GetSuperMarketProducts implements AppAction {
  const factory GetSuperMarketProducts(ActionResult onResult, {required String supermarketName}) = GetSuperMarketProductsStart;

  const factory GetSuperMarketProducts.successful(List<Product> supermarketProducts) = GetSuperMarketProductsSuccessful;

  @Implements<ErrorAction>()
  const factory GetSuperMarketProducts.error(Object error, StackTrace stackTrace) = GetSuperMarketProductsError;
}
