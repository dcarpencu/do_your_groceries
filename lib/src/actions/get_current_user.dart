part of 'index.dart';

const String _kGetCurrentUserPendingId = 'GetCurrentUser';

@freezed
class GetCurrentUser with _$GetCurrentUser implements AppAction {
  @Implements<ActionStart>()
  const factory GetCurrentUser.start({
    @Default(_kGetCurrentUserPendingId) String pendingId,
  }) = GetCurrentUserStart;

  @Implements<UserAction>()
  @Implements<ActionDone>()
  const factory GetCurrentUser.successful(
    AppUser? user, [
    @Default(_kGetCurrentUserPendingId) String pendingId,
  ]) = GetCurrentUserSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetCurrentUser.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetCurrentUserPendingId) String pendingId,
  ]) = GetCurrentUserError;

  static String get pendingKey => _kGetCurrentUserPendingId;
}
