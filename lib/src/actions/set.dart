part of 'index.dart';

@freezed
class SetSelectedList with _$SetSelectedList implements AppAction {
  const factory SetSelectedList(String selectedGroceryList) = SetSelectedList$;
}
