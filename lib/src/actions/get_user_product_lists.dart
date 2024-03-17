part of 'index.dart';

@freezed
class UpdateUserProductsList with _$UpdateUserProductsList implements AppAction {
  const factory UpdateUserProductsList() = UpdateUserProductsListStart;

  const factory UpdateUserProductsList.successful() = UpdateUserProductsListSuccessful;

  @Implements<ErrorAction>()
  const factory UpdateUserProductsList.error(Object error, StackTrace stackTrace) = UpdateUserProductsListError;
}

