part of 'index.dart';

@freezed
class SetSelectedList with _$SetSelectedList implements AppAction {
  const factory SetSelectedList(String selectedGroceryList) = SetSelectedList$;
}

@freezed
class SetProductsListToEmpty with _$SetProductsListToEmpty implements AppAction {
  const factory SetProductsListToEmpty() = SetProductsListToEmpty$;
}
