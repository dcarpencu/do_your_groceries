part of 'index.dart';

@freezed
class GetProducts with _$GetProducts implements AppAction {
  const factory GetProducts(ActionResult onResult) = GetProductsStart;

  const factory GetProducts.successful(List<Auchan> products) = GetProductsSuccessful;

  @Implements<ErrorAction>()
  const factory GetProducts.error(Object error, StackTrace stackTrace) = GetProductsError;
}
