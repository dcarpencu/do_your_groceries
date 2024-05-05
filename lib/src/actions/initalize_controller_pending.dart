part of 'index.dart';

const String _kInitializeControllerPendingId = 'InitializeController';

@freezed
class InitializeController with _$InitializeController implements AppAction {
  @Implements<ActionStart>()
  const factory InitializeController.start({ required CameraController controller,
    @Default(_kInitializeControllerPendingId) String pendingId,
  }) = InitializeControllerStart;

  @Implements<ActionDone>()
  const factory InitializeController.successful([
    @Default(_kInitializeControllerPendingId) String pendingId,
  ]) = InitializeControllerSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory InitializeController.error(
    Object error, StackTrace stackTrace, [
    @Default(_kInitializeControllerPendingId) String pendingId,
  ]) = InitializeControllerError;

  static String get pendingKey => _kInitializeControllerPendingId;
}
