part of 'index.dart';

@freezed
class AddGroceryListToUser with _$AddGroceryListToUser implements AppAction {
  const factory AddGroceryListToUser({required String groceryListId}) = AddGroceryListToUserStart;

  @Implements<UserAction>()
  const factory AddGroceryListToUser.successful(AppUser user) = AddGroceryListToUserSuccessful;

  @Implements<ErrorAction>()
  const factory AddGroceryListToUser.error(Object error, StackTrace stackTrace) = AddGroceryListToUserError;
}
