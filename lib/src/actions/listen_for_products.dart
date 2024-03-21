part of 'index.dart';

@freezed
abstract class ListenForProducts with _$ListenForProducts implements AppAction {
  const factory ListenForProducts.start(String groceryListTitle) = ListenForProductsStart;

  const factory ListenForProducts.done(String groceryListTitle) = ListenForProductsDone;

  const factory ListenForProducts.event(List<Product> products) = OnProductsEvent;

  @Implements<ErrorAction>()
  const factory ListenForProducts.error(Object error, StackTrace stackTrace) = _ListenForProductsError;
}
