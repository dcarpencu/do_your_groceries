part of 'index.dart';

@freezed
class GetUserProducts with _$GetUserProducts implements AppAction {
  const factory GetUserProducts() = GetUserProductsStart;

  const factory GetUserProducts.successful(List<Product> products) = GetUserProductsSuccessful;

  @Implements<ErrorAction>()
  const factory GetUserProducts.error(Object error, StackTrace stackTrace) = GetUserProductsError;
}
