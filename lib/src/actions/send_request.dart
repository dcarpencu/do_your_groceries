part of 'index.dart';

const String _kSendRequestPendingId = 'SendRequest';

@freezed
class SendRequest with _$SendRequest implements AppAction {
  @Implements<ActionStart>()
  const factory SendRequest.start({
    required String senderUsername,
    required String receiverId,
    required String groceryListId,
    required String groceryListName,
    @Default(_kSendRequestPendingId) String pendingId,
  }) = SendRequestStart;

  @Implements<ActionDone>()
  const factory SendRequest.successful(
    AppUser user, [
    @Default(_kSendRequestPendingId) String pendingId,
  ]) = SendRequestSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory SendRequest.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSendRequestPendingId) String pendingId,
  ]) = SendRequestError;

  static String get pendingKey => _kSendRequestPendingId;
}
