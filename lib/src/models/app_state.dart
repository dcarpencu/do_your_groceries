part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(true) final bool isLoading,
    @Default(<Auchan>[]) final List<Auchan> products,
    @Default(<GroceryList>{}) Set<GroceryList> groceryLists,
}) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
