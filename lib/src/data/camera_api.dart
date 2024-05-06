import 'package:camera/camera.dart';
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
    final List<CameraDescription> cameraDescriptions = await availableCameras();

    final List<CameraInfo> cameras = cameraDescriptions.map((CameraDescription cameraDescription) {
      return CameraInfo(
        name: cameraDescription.name,
        lensDirection: cameraDescription.lensDirection,
        sensorOrientation: cameraDescription.sensorOrientation,
      );
    }).toList();

    return cameras;
  }

  Future<void> initializeController({required CameraController controller}) async {
    await controller.initialize();
  }

  Future<XFile> takePicture({required CameraController controller}) async {
    final XFile picture = await controller.takePicture();

    return picture;
  }

  // Future<void> loadModel() async {
  //   await Tflite.loadModel(
  //     model: "assets/model_unquant.tflite",
  //     labels: "assets/labels.txt",
  //   );
  // }
}
