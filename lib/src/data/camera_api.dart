import 'package:camera/camera.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
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

  Future<TakenPicture> takePicture({required CameraController controller}) async {
    final XFile picture = await controller.takePicture();

    print('\n\n\n\n PICTURE: $picture \n\n\n');

    final InputImage inputImage = InputImage.fromFilePath(picture.path);

    print('\n\n\n\n\n INPUT IMAGE: $inputImage \n\n\n IMAGE PATH: ${picture.path} \n\n\n');

    final ImageLabeler imageLabeler = ImageLabeler(options: ImageLabelerOptions());
    final List<ImageLabel> labels = await imageLabeler.processImage(inputImage);
    final StringBuffer sb = StringBuffer();
    for (final ImageLabel imgLabel in labels) {
      final String lblText = imgLabel.label;
      final double confidence = imgLabel.confidence;
      sb
        ..write(lblText)
        ..write(' : ')
        ..write((confidence * 100).toStringAsFixed(2))
        ..write('%\n');
    }
    await imageLabeler.close();

    final TakenPicture takenPicture = TakenPicture(picture: picture, imageLabel: sb.toString());
    return takenPicture;
  }

  Future<String> getImageLabels({required String imagePath}) async {
    final InputImage inputImage = InputImage.fromFilePath(imagePath);

    print('\n\n\n\n\n INPUT IMAGE: $inputImage \n\n\n IMAGE PATH: $imagePath \n\n\n');
    final ImageLabeler imageLabeler = ImageLabeler(options: ImageLabelerOptions());
    final List<ImageLabel> labels = await imageLabeler.processImage(inputImage);
    final StringBuffer sb = StringBuffer();
    for (final ImageLabel imgLabel in labels) {
      final String lblText = imgLabel.label;
      final double confidence = imgLabel.confidence;
      sb
        ..write(lblText)
        ..write(' : ')
        ..write((confidence * 100).toStringAsFixed(2))
        ..write('%\n');
    }
    await imageLabeler.close();
    return sb.toString();
  }
}
