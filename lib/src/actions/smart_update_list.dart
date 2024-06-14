part of 'index.dart';

@freezed
class SmartUpdateList with _$SmartUpdateList implements AppAction {
  const factory SmartUpdateList({required List<Product> groceryListProducts}) = SmartUpdateListStart;

  const factory SmartUpdateList.successful() = SmartUpdateListSuccessful;

  @Implements<ErrorAction>()
  const factory SmartUpdateList.error(Object error, StackTrace stackTrace) = SmartUpdateListError;
}
