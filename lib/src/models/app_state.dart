part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(true) bool isLoading,
    @Default(<Product>[]) List<Product> supermarketProducts,
    @Default(<Product>[]) List<Product> productsList,
    @Default(<GroceryList>{}) Set<GroceryList> groceryLists,
    String? selectedGroceryList,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
