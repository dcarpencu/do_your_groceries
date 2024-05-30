part of 'index.dart';

@freezed
class AcceptRequest with _$AcceptRequest implements AppAction {
  const factory AcceptRequest({required String groceryListId, required AddRequest requestToRemove}) = AcceptRequestStart;

  const factory AcceptRequest.successful() = AcceptRequestSuccessful;

  @Implements<ErrorAction>()
  const factory AcceptRequest.error(Object error, StackTrace stackTrace) = AcceptRequestError;
}
