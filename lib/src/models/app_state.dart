part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(<Product>[]) List<Product> supermarketProducts,
    @Default(<Product>[]) List<Product> productsList,
    @Default(<Product>[]) List<Product> relatedProducts,
    @Default(<GroceryList>{}) Set<GroceryList> groceryLists,
    String? selectedGroceryList,
    @Default(<String>{}) Set<String> pending,
    @Default(1) int pageNumber,
    @Default(false) bool contentLoaded,

  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
