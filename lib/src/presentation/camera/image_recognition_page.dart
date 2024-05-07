import 'dart:io';

import 'package:camera/camera.dart';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/presentation/camera/image_view_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class CameraApp extends StatefulWidget {
  const CameraApp({required this.cameras, super.key});

  final List<CameraInfo> cameras;

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();
    _store = StoreProvider.of<AppState>(context, listen: false);
    _store..dispatch(const RequestStoragePermissionStart())..dispatch(SetSelectedCamera(widget.cameras[0]));

    controller = CameraController(CameraInfo.toCameraDescription(_store.state.selectedCamera!), ResolutionPreset.max);
    _store.dispatch(InitializeControllerStart(controller: controller));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Take a picture',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: PendingContainer(
        builder: (BuildContext context, Set<String> pending) {
          if (pending.contains(InitializeController.pendingKey)) {
            return const LinearProgressIndicator();
          }

          return Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CameraPreview(controller),
                ),
              ),
              const SizedBox(height: 64,),
              FloatingActionButton(
                onPressed: () {
                  _store.dispatch(TakePictureStart(controller: controller))
                      .then(Navigator.of(context).push(
                      MaterialPageRoute<Widget>(
                          builder: (BuildContext context) => ImageViewPage(store: _store))));
                },
                backgroundColor: Colors.white70,
                foregroundColor: Colors.black,
                child: const Icon(Icons.camera),
              ),
              if (pending.contains(TakePicture.pendingKey) || _store.state.picture == null)
                const Text('muie'),
            ],
          );
        },
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.75,
          padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.file(
                  File(_store.state.picture!.path),
                ),
              ),
              const Expanded(
                child: Text('CEVA'),
              )
            ],
          ),
        );
      },
    );
  }
}




