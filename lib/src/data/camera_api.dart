import 'package:camera/camera.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/camera/image_view_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

    print('\n\n\n --- $cameras \n\n');
    return cameras;
  }

  Future<void> initializeController({required CameraController controller}) async {
    await controller.initialize();
  }

  Future<XFile> takePicture({required CameraController controller, required BuildContext context}) async {

      final XFile picture = await controller.takePicture();



      // Navigate to the image view page after capturing the image
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => ImageViewPage(imagePath: picture.path),
        ),
      );

      return picture;
  }

}
