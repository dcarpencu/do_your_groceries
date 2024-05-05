part of 'index.dart';

@freezed
class GetCameras with _$GetCameras implements AppAction {
  const factory GetCameras() = GetCamerasStart;

  const factory GetCameras.successful(List<CameraInfo> cameras) = GetCamerasSuccessful;

  @Implements<ErrorAction>()
  const factory GetCameras.error(Object error, StackTrace stackTrace) = GetCamerasError;
}
