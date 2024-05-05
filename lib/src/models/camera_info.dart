part of 'index.dart';

enum CameraInfoLensDirection {
  /// Front facing camera (a user looking at the screen is seen by the camera).
  front,

  /// Back facing camera (a user looking at the screen is not seen by the camera).
  back,

  /// External camera which may not be mounted to the device.
  external,
}

@freezed
class CameraInfo with _$CameraInfo {
  const factory CameraInfo({
    required String name,
    required CameraInfoLensDirection lensDirection,
    required int sensorOrientation,
  }) = CameraInfo$;

  factory CameraInfo.fromJson(Map<dynamic, dynamic> json) => _$CameraInfoFromJson(Map<String, dynamic>.from(json));
}
