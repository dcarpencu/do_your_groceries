import 'package:camera/camera.dart';
import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/containers/pending_container.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:do_you_groceries/src/navigation/transitions.dart';
import 'package:do_you_groceries/src/presentation/camera/image_view_page.dart';
import 'package:do_you_groceries/src/ui_elements/components/background_wave_clipper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:redux/redux.dart';

class CameraApp extends StatefulWidget {
  const CameraApp({super.key});

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
    _store.dispatch(SetSelectedCamera(_store.state.cameras[0]));

    controller = CameraController(CameraInfo.toCameraDescription(_store.state.cameras[0]), ResolutionPreset.max);
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
      body: Column(
        children: <Widget>[
          BackgroundWave(
            pageName: 'Take a picture',
            iconWidget: Image.asset('assets/Backgrounds/grocery-bag.png'),
            height: 200,
          ),
          PendingContainer(
            builder: (BuildContext context, Set<String> pending) {
              if (pending.contains(InitializeController.pendingKey)) {
                return Center(
                  child: LoadingAnimationWidget.fourRotatingDots(
                    color: Colors.black,
                    size: 100,
                  ),
                );
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
                    height: 24,
                  ),
                  FloatingActionButton(
                    onPressed: () async {
                      await _store.dispatch(TakePictureStart(controller: controller));

                      if (!context.mounted) {
                        return;
                      }
                      await Navigator.of(context).push(createRoute(const ImageViewPage()));
                    },
                    backgroundColor: Colors.lightBlueAccent,
                    foregroundColor: Colors.black,
                    child: const Icon(Icons.camera),
                  ),
                ],
              );
            },
          ),
        ],
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

      try {
        await controller.setFocusPoint(point);
        await controller.setExposurePoint(point);
      } catch (e) {
        if (kDebugMode) {
          print('Error setting focus and exposure point: $e');
        }
      }

      await Future<void>.delayed(const Duration(seconds: 2)).then((_) {
        if (mounted) {
          setState(() {
            showFocusCircle = false;
          });
        }
      });
    }
  }
}
