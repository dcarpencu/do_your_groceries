part of 'index.dart';

const String _kCreateUserPendingId = 'CreateUser';

@freezed
class CreateUser with _$CreateUser implements AppAction {
  @Implements<ActionStart>()
  const factory CreateUser.start({
    required String email,
    required String password,
    required String username,
    required ActionResult onResult,
    @Default(_kCreateUserPendingId) String pendingId,
  }) = CreateUserStart;

  @Implements<UserAction>()
  @Implements<ActionDone>()
  const factory CreateUser.successful(
    AppUser user, [
    @Default(_kCreateUserPendingId) String pendingId,
  ]) = CreateUserSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory CreateUser.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kCreateUserPendingId) String pendingId,
  ]) = CreateUserError;

  static String get pendingKey => _kCreateUserPendingId;
}
