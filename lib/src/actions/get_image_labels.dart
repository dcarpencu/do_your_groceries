part of 'index.dart';

const String _kGetImageLabelsPendingId = 'GetImageLabels';

@freezed
class GetImageLabels with _$GetImageLabels implements AppAction {
  @Implements<ActionStart>()
  const factory GetImageLabels.start({required String imagePath,
    @Default(_kGetImageLabelsPendingId) String pendingId,
  }) = GetImageLabelsStart;

  @Implements<ActionDone>()
  const factory GetImageLabels.successful(String imageLabel, [
    @Default(_kGetImageLabelsPendingId) String pendingId,
  ]) = GetImageLabelsSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetImageLabels.error(
    Object error, StackTrace stackTrace, [
    @Default(_kGetImageLabelsPendingId) String pendingId,
  ]) = GetImageLabelsError;

  static String get pendingKey => _kGetImageLabelsPendingId;
}
