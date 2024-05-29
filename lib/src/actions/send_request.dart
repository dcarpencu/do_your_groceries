part of 'index.dart';

@freezed
class SendRequest with _$SendRequest implements AppAction {
  const factory SendRequest({required String receiverId, required String groceryListId}) = SendRequestStart;

  const factory SendRequest.successful() = SendRequestSuccessful;

  @Implements<ErrorAction>()
  const factory SendRequest.error(Object error, StackTrace stackTrace) = SendRequestError;
}
