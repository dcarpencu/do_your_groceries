part of 'index.dart';

const String _kGetProductsAfterEditPendingId = 'GetProductsAfterEdit';

@freezed
class GetProductsAfterEdit with _$GetProductsAfterEdit implements AppAction {
  @Implements<ActionStart>()
  const factory GetProductsAfterEdit.start({ required String groceryListId,
    @Default(_kGetProductsAfterEditPendingId) String pendingId,
  }) = GetProductsAfterEditStart;

  @Implements<ActionDone>()
  const factory GetProductsAfterEdit.successful(List<Product> productsAfterEdit,[
    @Default(_kGetProductsAfterEditPendingId) String pendingId,
  ]) = GetProductsAfterEditSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetProductsAfterEdit.error(
    Object error, StackTrace stackTrace, [
    @Default(_kGetProductsAfterEditPendingId) String pendingId,
  ]) = GetProductsAfterEditError;

  static String get pendingKey => _kGetProductsAfterEditPendingId;
}
