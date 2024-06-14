part of 'index.dart';

@freezed
class RemoveProductFromGroceryList with _$RemoveProductFromGroceryList implements AppAction {
  const factory RemoveProductFromGroceryList({
    required String groceryListId,
    required Product product,
  }) = RemoveProductFromGroceryListStart;

  const factory RemoveProductFromGroceryList.successful() = RemoveProductFromGroceryListSuccessful;

  @Implements<ErrorAction>()
  const factory RemoveProductFromGroceryList.error(Object error, StackTrace stackTrace) =
      RemoveProductFromGroceryListError;
}
