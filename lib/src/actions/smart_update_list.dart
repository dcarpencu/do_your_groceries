part of 'index.dart';

const String _kSmartUpdateListPendingId = 'SmartUpdateList';

@freezed
class SmartUpdateList with _$SmartUpdateList implements AppAction {
  @Implements<ActionStart>()
  const factory SmartUpdateList.start({
    required List<Product> groceryListProducts,
    @Default(_kSmartUpdateListPendingId) String pendingId,
  }) = SmartUpdateListStart;

  @Implements<ActionDone>()
  const factory SmartUpdateList.successful(
    List<Product> generatedProducts, [
    @Default(_kSmartUpdateListPendingId) String pendingId,
  ]) = SmartUpdateListSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory SmartUpdateList.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kSmartUpdateListPendingId) String pendingId,
  ]) = SmartUpdateListError;

  static String get pendingKey => _kSmartUpdateListPendingId;
}
