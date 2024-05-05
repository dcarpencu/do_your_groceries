import 'package:camera/camera.dart';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'image_view_page.dart';

class CameraApp extends StatefulWidget {
  const CameraApp({required this.cameras, super.key});
  final List<CameraInfo> cameras;

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;
  late XFile? imageFile; // Variable to store the captured image file

  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(const RequestStoragePermissionStart());

    final List<CameraInfo> cameras = widget.cameras;
    // Convert CameraInfo objects to CameraDescription objects
    final List<CameraDescription> cameraDescriptions = cameras.map((cameraInfo) {
      return CameraDescription(
        name: cameraInfo.name,
        lensDirection: _convertLensDirection(cameraInfo.lensDirection),
        sensorOrientation: cameraInfo.sensorOrientation,
      );
    }).toList();

    // Assuming you want to use the second camera in the list
    final CameraDescription selectedCamera = cameraDescriptions[0];

    controller = CameraController(selectedCamera, ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
          // Handle access errors here.
            break;
          default:
          // Handle other errors here.
            break;
        }
      }
    });
  }

// Convert CameraLensDirection enum from CameraInfo to CameraDescription
  CameraLensDirection _convertLensDirection(CameraInfoLensDirection lensDirection) {
    switch (lensDirection) {
      case CameraInfoLensDirection.front:
        return CameraLensDirection.front;
      case CameraInfoLensDirection.back:
        return CameraLensDirection.back;
      case CameraInfoLensDirection.external:
        return CameraLensDirection.external;
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Take a picture',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: <Widget>[
          CameraPreview(controller),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: FloatingActionButton(
                onPressed: _takePicture,
                child: Icon(Icons.camera),
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurpleAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to take a picture
  Future<void> _takePicture() async {
    try {
      final XFile picture = await controller.takePicture();
      setState(() {
        imageFile = picture;
      });
      // Navigate to the image view page after capturing the image
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => ImageViewPage(imagePath: imageFile!.path),
        ),
      );
    } catch (e) {
      print('Error taking picture: $e');
    }
  }
}