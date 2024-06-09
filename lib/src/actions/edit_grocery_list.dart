part of 'index.dart';

@freezed
class EditGroceryList with _$EditGroceryList implements AppAction {
  const factory EditGroceryList({
    required String title,
    required String description,
    required String selectedIcon,
    required GroceryList groceryList,
  }) = EditGroceryListStart;

  const factory EditGroceryList.successful(List<GroceryList> groceryLists) = EditGroceryListSuccessful;

  @Implements<ErrorAction>()
  const factory EditGroceryList.error(Object error, StackTrace stackTrace) = EditGroceryListError;
}
