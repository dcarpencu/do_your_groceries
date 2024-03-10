part of 'index.dart';

@freezed
class Login with _$Login implements AppAction {
  const factory Login({required String email, required String password, required ActionResult onResult}) = LoginStart;

  @Implements<UserAction>()
  const factory Login.successful(AppUser user) = LoginSuccessful;

  @Implements<ErrorAction>()
  const factory Login.error(Object error, StackTrace stackTrace) = LoginError;
}
