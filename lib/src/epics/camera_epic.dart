import 'package:do_you_groceries/src/actions/index.dart';
import 'package:do_you_groceries/src/data/camera_api.dart';
import 'package:do_you_groceries/src/models/index.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/transformers.dart';

class CameraEpic {
  CameraEpic(this._cameraApi);

  final CameraApi _cameraApi;

  Epic<AppState> getEpics() {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, TakePictureStart>(_takePictureStart).call,
      TypedEpic<AppState, GetImageLabelsStart>(_getImageLabelsStart).call,
      TypedEpic<AppState, RequestStoragePermissionStart>(_requestStoragePermissionStart).call,
      TypedEpic<AppState, GetCamerasStart>(_getCamerasStart).call,
      ]);
  }

  Stream<AppAction> _requestStoragePermissionStart(
      Stream<RequestStoragePermissionStart> actions,
      EpicStore<AppState> store,
      ) {
    return actions.flatMap((RequestStoragePermissionStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _cameraApi.requestStoragePermission(),
      )
          .mapTo(const RequestStoragePermission.successful())
          .onErrorReturnWith(RequestStoragePermission.error);
    });
  }

  Stream<AppAction> _initializeControllerStart(Stream<InitializeControllerStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((InitializeControllerStart action) {
      return Stream<void>.value(null)
          .asyncMap((_) => _cameraApi.initializeController(controller: action.controller))
          .mapTo(const InitializeController.successful())
          .onErrorReturnWith(InitializeController.error);
    });
  }

  Stream<AppAction> _getCamerasStart(Stream<GetCamerasStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetCamerasStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _cameraApi.getCameras(),
      )
          .map<GetCameras>(GetCameras.successful)
          .onErrorReturnWith(GetCameras.error);
    });
  }

  Stream<AppAction> _takePictureStart(Stream<TakePictureStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((TakePictureStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _cameraApi.takePicture(
          controller: action.controller,
        ),
      )
          .map<TakePicture>(TakePicture.successful)
          .onErrorReturnWith(TakePicture.error);
    });
  }

  Stream<AppAction> _getImageLabelsStart(Stream<GetImageLabelsStart> actions, EpicStore<AppState> store) {
    return actions.flatMap((GetImageLabelsStart action) {
      return Stream<void>.value(null)
          .asyncMap(
            (_) => _cameraApi.getImageLabels(
          imagePath: action.imagePath,
        ),
      )
          .map<GetImageLabels>(GetImageLabels.successful)
          .onErrorReturnWith(GetImageLabels.error);
    });
  }
}