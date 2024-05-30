part of 'index.dart';

@freezed
class RemoveRequest with _$RemoveRequest implements AppAction {
  const factory RemoveRequest({required AddRequest requestToRemove}) = RemoveRequestStart;

  const factory RemoveRequest.successful() = RemoveRequestSuccessful;

  @Implements<ErrorAction>()
  const factory RemoveRequest.error(Object error, StackTrace stackTrace) = RemoveRequestError;
}
