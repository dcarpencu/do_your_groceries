part of 'index.dart';

const String _kGetUsersPendingId = 'GetUsers';

@freezed
class GetUsers with _$GetUsers implements AppAction {
  @Implements<ActionStart>()
  const factory GetUsers.start({
    required GroceryList groceryList,
    @Default(_kGetUsersPendingId) String pendingId,
  }) = GetUsersStart;

  @Implements<ActionDone>()
  const factory GetUsers.successful(
    Set<AppUser> users, [
    @Default(_kGetUsersPendingId) String pendingId,
  ]) = GetUsersSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetUsers.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetUsersPendingId) String pendingId,
  ]) = GetUsersError;

  static String get pendingKey => _kGetUsersPendingId;
}
