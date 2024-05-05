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
    @Default(<CameraInfo>[]) List<CameraInfo> cameras,
    @Default(null) CameraInfo? selectedCamera,
    @JsonKey(fromJson: _xFileFromJson, toJson: _xFileToJson) XFile? picture,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}

XFile? _xFileFromJson(dynamic json) {
  if (json is String) {
    // Convert string to XFile
    return XFile(json);
  }
  return null;
}

String? _xFileToJson(XFile? file) {
  return file?.path;
}
