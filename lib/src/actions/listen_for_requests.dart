part of 'index.dart';

@freezed
abstract class ListenForRequests with _$ListenForRequests implements AppAction {
  const factory ListenForRequests.start({required bool isNotifications}) = ListenForRequestsStart;

  const factory ListenForRequests.done({required bool isNotifications}) = ListenForRequestsDone;

  const factory ListenForRequests.event(List<AddRequest> requests) = OnRequestsEvent;

  @Implements<ErrorAction>()
  const factory ListenForRequests.error(Object error, StackTrace stackTrace) = _ListenForRequestsError;
}
