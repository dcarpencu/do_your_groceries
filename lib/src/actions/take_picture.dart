part of 'index.dart';

const String _kTakePicturePendingId = 'TakePicture';

@freezed
class TakePicture with _$TakePicture implements AppAction {
  @Implements<ActionStart>()
  const factory TakePicture.start({
    required CameraController controller,
    @Default(_kTakePicturePendingId) String pendingId,
  }) = TakePictureStart;

  @Implements<ActionDone>()
  const factory TakePicture.successful(
    XFile picture, [
    @Default(_kTakePicturePendingId) String pendingId,
  ]) = TakePictureSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory TakePicture.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kTakePicturePendingId) String pendingId,
  ]) = TakePictureError;

  static String get pendingKey => _kTakePicturePendingId;
}
