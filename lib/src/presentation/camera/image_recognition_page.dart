import 'package:camera/camera.dart';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/navigation/transitions.dart';
import 'package:do_you_groceries/src/presentation/camera/image_view_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
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
  bool showFocusCircle = false;
  double x = 0;
  double y = 0;

  @override
  void initState() {
    super.initState();
    _store = StoreProvider.of<AppState>(context, listen: false);
    _store.dispatch(SetSelectedCamera(widget.cameras[0]));

    controller = CameraController(CameraInfo.toCameraDescription(_store.state.selectedCamera!), ResolutionPreset.max);
    _store.dispatch(InitializeControllerStart(controller: controller));
    controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
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
              GestureDetector(
                onTapUp: _onTap,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Stack(
                      children: <Widget>[
                        CameraPreview(controller),
                        if (showFocusCircle)
                          Positioned(
                            top: y - 20,
                            left: x - 20,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 1.5),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              FloatingActionButton(
                onPressed: () async {
                  await _store.dispatch(TakePictureStart(controller: controller));

                  if (!context.mounted) {
                    return;
                  }
                  await Navigator.of(context).push(createRoute(const ImageViewPage()));
                },
                backgroundColor: Colors.white70,
                foregroundColor: Colors.black,
                child: const Icon(Icons.camera),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _onTap(TapUpDetails details) async {
    if (controller.value.isInitialized) {
      setState(() {
        showFocusCircle = true;
        x = details.localPosition.dx;
        y = details.localPosition.dy;
      });

      final double fullWidth = MediaQuery.of(context).size.width;
      final double cameraHeight = fullWidth * controller.value.aspectRatio;

      final double xp = x / fullWidth;
      final double yp = y / cameraHeight;

      final Offset point = Offset(xp, yp);

      await controller.setFocusPoint(point);
      await controller.setExposurePoint(point);

      setState(() {
        Future<void>.delayed(const Duration(seconds: 2)).whenComplete(() {
          setState(() {
            showFocusCircle = false;
          });
        });
      });
    }
  }
}
