part of 'index.dart';

@freezed
class RemoveRequest with _$RemoveRequest implements AppAction {
  const factory RemoveRequest({required AddRequest requestToRemove}) = RemoveRequestStart;

  const factory RemoveRequest.successful() = RemoveRequestSuccessful;

  @Implements<ErrorAction>()
  const factory RemoveRequest.error(Object error, StackTrace stackTrace) = RemoveRequestError;
}

@freezed
class RemoveProductSimple with _$RemoveProductSimple implements AppAction {
  const factory RemoveProductSimple({required Product product}) = RemoveProductSimple$;
}

@freezed
class RemoveGroceryListSimple with _$RemoveGroceryListSimple implements AppAction {
  const factory RemoveGroceryListSimple({required GroceryList groceryList}) = RemoveGroceryListSimple$;
}
