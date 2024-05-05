import 'package:camera/camera.dart' as camera;
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraApi {
  CameraApi();

  Future<void> requestStoragePermission() async {
    // Check if the platform is not web, as web has no permissions
    if (!kIsWeb) {
      // Request storage permission
      final PermissionStatus status = await Permission.storage.status;
      if (!status.isGranted) {
        await Permission.storage.request();
      }

      // Request camera permission
      final PermissionStatus cameraStatus = await Permission.camera.status;
      if (!cameraStatus.isGranted) {
        await Permission.camera.request();
      }
    }
  }

  Future<List<CameraInfo>> getCameras() async {
    final List<camera.CameraDescription> cameraDescriptions = await camera.availableCameras();

    final List<CameraInfo> cameras = cameraDescriptions.map((cameraDescription) {
      return CameraInfo(
        name: cameraDescription.name,
        lensDirection: _convertLensDirection(cameraDescription.lensDirection),
        sensorOrientation: cameraDescription.sensorOrientation,
      );
    }).toList();

    print('\n\n\n --- $cameras \n\n');
    return cameras;
  }

  CameraInfoLensDirection _convertLensDirection(camera.CameraLensDirection lensDirection) {
    switch (lensDirection) {
      case camera.CameraLensDirection.front:
        return CameraInfoLensDirection.front;
      case camera.CameraLensDirection.back:
        return CameraInfoLensDirection.back;
      case camera.CameraLensDirection.external:
        return CameraInfoLensDirection.external;
    }
  }
}
