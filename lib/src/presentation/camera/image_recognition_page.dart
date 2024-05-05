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
    _store
      ..dispatch(const RequestStoragePermissionStart())
      ..dispatch(SetSelectedCamera(widget.cameras[0]));

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
        backgroundColor: Colors.green,
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Take a picture',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: PendingContainer(
        builder: (BuildContext context, Set<String> pending) {
          if (pending.contains(InitializeController.pendingKey)) {
            return const LinearProgressIndicator();
          }

          return Stack(
            children: <Widget>[
              CameraPreview(controller),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: FloatingActionButton(
                    onPressed: () {
                      _store.dispatch(TakePictureStart(controller: controller));
                      Navigator.push(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (BuildContext context) => ImageViewPage(
                            store: _store,
                          ),
                        ),
                      );
                    },
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green,
                    child: const Icon(Icons.camera),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
