import 'dart:io';

import 'package:camera/camera.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_image_labeling/google_mlkit_image_labeling.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
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

    //print('\n\n\n\n PICTURE: $picture \n\n\n');

    final InputImage inputImage = InputImage.fromFilePath(picture.path);

    //print('\n\n\n\n\n INPUT IMAGE: $inputImage \n\n\n IMAGE PATH: ${picture.path} \n\n\n');

    final String modelPath = await getModelPath('assets/ml/metadata_latest.tflite');
    final LocalLabelerOptions options = LocalLabelerOptions(
      confidenceThreshold: 0.75,
      modelPath: modelPath,
    );
    final ImageLabeler imageLabeler = ImageLabeler(options: options);

    //final ImageLabeler imageLabeler = ImageLabeler(options: ImageLabelerOptions());
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

  Future<String> getModelPath(String asset) async {
    final String path = '${(await getApplicationSupportDirectory()).path}/$asset';
    await Directory(dirname(path)).create(recursive: true);
    final File file = File(path);
    if (!await file.exists()) {
      final ByteData byteData = await rootBundle.load(asset);
      await file.writeAsBytes(byteData.buffer
          .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    }
    return file.path;
  }

  Future<String> getImageLabels({required String imagePath}) async {
    print('\n\n\n GetIMAGELABELS \n\n');

    final InputImage inputImage = InputImage.fromFilePath(imagePath);

    print('\n\n\n input Image: $inputImage \n\n\n');

    //final String modelPath = await getModelPath('assets/ml/popular_us_products.tflite');


    final String path = '${(await getApplicationSupportDirectory()).path}/assets/ml/model_unquant.tflite';

    print('\n\n\n PATH: $path \n\n\n');
    await Directory(dirname(path)).create(recursive: true);
    final File file = File(path);

    print('\n\n\n FILE: $file \n\n\n');

    if (!await file.exists()) {
      print('\n\n\n BYTEDATA \n\n\n');

      final ByteData byteData = await rootBundle.load('assets/ml/model_unquant.tflite');
      await file.writeAsBytes(byteData.buffer
          .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    }

    print('\n\n\n FILE PATH: ${file.path} \n\n\n');

    final LocalLabelerOptions options = LocalLabelerOptions(
      confidenceThreshold: 0.75,
      modelPath: file.path,
    );

    print('\n\n\n OPTIONS: $options \n\n\n');

    final ImageLabeler imageLabeler = ImageLabeler(options: options);

    //final ImageLabeler imageLabeler = ImageLabeler(options: ImageLabelerOptions(confidenceThreshold: 0.75));

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
