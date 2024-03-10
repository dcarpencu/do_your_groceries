part of 'index.dart';

@freezed
class GetCurrentUser with _$GetCurrentUser implements AppAction {
  const factory GetCurrentUser() = GetCurrentUserStart;

  @Implements<UserAction>()
  const factory GetCurrentUser.successful(AppUser? user) = GetCurrentUserSuccessful;

  @Implements<ErrorAction>()
  const factory GetCurrentUser.error(Object error, StackTrace stackTrace) = GetCurrentUserError;
}
