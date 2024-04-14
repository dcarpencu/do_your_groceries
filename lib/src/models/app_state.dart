part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(true) bool isLoading,
    @Default(<Auchan>[]) List<Auchan> products,
    @Default(<Product>[]) List<Product> productsList,
    String? selectedListTitle,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
