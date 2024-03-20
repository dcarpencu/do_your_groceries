part of 'index.dart';

@freezed
class UpdateUserProductsList with _$UpdateUserProductsList implements AppAction {
  const factory UpdateUserProductsList(Product product, {required bool add}) = UpdateUserProductsListStart;

  const factory UpdateUserProductsList.successful(List<Product>? userProductsList) = UpdateUserProductsListSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateUserProductsList.error(Object error, StackTrace stackTrace) = UpdateUserProductsListError;
}
