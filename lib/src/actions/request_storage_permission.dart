part of 'index.dart';

@freezed
class RequestStoragePermission with _$RequestStoragePermission implements AppAction {
  const factory RequestStoragePermission() = RequestStoragePermissionStart;

  const factory RequestStoragePermission.successful() = RequestStoragePermissionSuccessful;

  @Implements<ErrorAction>()
  const factory RequestStoragePermission.error(Object error, StackTrace stackTrace) = RequestStoragePermissionError;
}
