part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(<Product>[]) List<Product> supermarketProducts,
    @Default(<Product>[]) List<Product> productsGroceryList,
    @Default(<Product>[]) List<Product> relatedProducts,
    @Default(<GroceryList>{}) Set<GroceryList> groceryLists,
    String? selectedGroceryList,
    String? selectedGroceryListName,
    @Default(<String>{}) Set<String> pending,
    @Default(1) int pageNumber,
    @Default(false) bool contentLoaded,
    @Default(<CameraInfo>[]) List<CameraInfo> cameras,
    @Default(null) TakenPicture? takenPicture,
    @Default(null) CameraInfo? selectedCamera,
    @Default(<AppUser>{}) Set<AppUser> users,
    @Default(<AddRequest>[]) List<AddRequest> requests,
    @Default(false) bool isNotifications,
    //GenerateContentResponse? response,
    //PromptData? promptData,
    @Default(<CuisineFilter>{}) Set<CuisineFilter> cuisines,
    String? generatorResponse,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
