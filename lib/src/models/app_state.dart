part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(<Product>[]) List<Product> productsGroceryList,
    @Default(<Product>[]) List<Product> relatedProducts,
    @Default(<GroceryList>{}) Set<GroceryList> groceryLists,
    GroceryList? selectedGroceryList,
    Product? selectedProduct,
    @Default(<String>{}) Set<String> pending,
    @Default(<CameraInfo>[]) List<CameraInfo> cameras,
    @Default(null) TakenPicture? takenPicture,
    @Default(null) CameraInfo? selectedCamera,
    @Default(<AppUser>{}) Set<AppUser> users,
    @Default(<AddRequest>[]) List<AddRequest> requests,
    @Default(false) bool isNotifications,
    @Default(<CuisineFilter>{}) Set<CuisineFilter> cuisines,
    String? generatorResponse,
    String? cuisineText,
    String? basicIngredientsText,
    String? dietaryRestrictionsText,
    @Default(<Product>[]) List<Product> supermarketProducts,
    @Default(1) int pageNumber,
    @Default(false) bool productsFinished,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
