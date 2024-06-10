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

    final String modelPath = await getModelPath('assets/ml/latest_metadata_200epch_v2.tflite');
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
      await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    }
    return file.path;
  }

  Future<String> getImageLabels({required String imagePath}) async {
    print('\n\n\n GetIMAGELABELS \n\n');

    try {
      final InputImage inputImage = InputImage.fromFilePath(imagePath);

      print('\n\n\n input Image: $inputImage \n\n\n');

      final String modelPath = await _loadModel('assets/ml/latest_metadata_200epch.tflite');

      final LocalLabelerOptions options = LocalLabelerOptions(
        confidenceThreshold: 0.75,
        modelPath: modelPath,
      );

      print('\n\n\n OPTIONS: $options \n\n\n');

      final ImageLabeler imageLabeler = ImageLabeler(options: options);

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
    } catch (e) {
      print('Error in getImageLabels: $e');
      return 'Error: $e';
    }
  }

  Future<String> _loadModel(String assetPath) async {
    try {
      final String modelPath = '${(await getApplicationSupportDirectory()).path}/$assetPath';
      final File modelFile = File(modelPath);

      if (!await modelFile.exists()) {
        final ByteData byteData = await rootBundle.load(assetPath);
        await modelFile.writeAsBytes(
          byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes),
          flush: true,
        );
      }

      return modelFile.path;
    } catch (e) {
      print('Error loading model: $e');
      rethrow;
    }
  }
}
