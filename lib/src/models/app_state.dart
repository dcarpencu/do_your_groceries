part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(true) bool isLoading,
    @Default(<Auchan>[]) List<Auchan> products,
    @Default(<Product>[]) List<Product> productsList,
    @Default(<GroceryList>{}) Set<GroceryList> groceryLists,
    String? selectedListTitle,
}) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
