part of 'index.dart';

@freezed
class UpdateGroceryLists with _$UpdateGroceryLists implements AppAction {
  const factory UpdateGroceryLists(String groceryListId, {required bool remove}) = UpdateGroceryListsStart;

  const factory UpdateGroceryLists.successful() = UpdateGroceryListsSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateGroceryLists.error(
    Object error,
    StackTrace stackTrace,
    String groceryListId, {
    required bool remove,
  }) = UpdateGroceryListsError;
}
