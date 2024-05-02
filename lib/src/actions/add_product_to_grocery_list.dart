part of 'index.dart';

@freezed
class AddProductToGroceryList with _$AddProductToGroceryList implements AppAction {
  const factory AddProductToGroceryList(Product product, String groceryListId, int page, {required String marketName, required String category,}) = AddProductToGroceryListStart;

  const factory AddProductToGroceryList.successful() = AddProductToGroceryListSuccessful;

  @Implements<ErrorAction>()
  const factory AddProductToGroceryList.error(Object error, StackTrace stackTrace) = AddProductToGroceryListError;
}
