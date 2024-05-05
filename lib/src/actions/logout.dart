part of 'index.dart';

const String _kLogoutPendingId = 'Logout';

@freezed
class Logout with _$Logout implements AppAction {
  @Implements<ActionStart>()
  const factory Logout.start({
    @Default(_kLogoutPendingId) String pendingId,
  }) = LogoutStart;

  @Implements<ActionDone>()
  const factory Logout.successful([
    @Default(_kLogoutPendingId) String pendingId,
  ]) = LogoutSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory Logout.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kLogoutPendingId) String pendingId,
  ]) = LogoutError;

  static String get pendingKey => _kLogoutPendingId;
}
