part of 'index.dart';

@freezed
class GroceryList with _$GroceryList {
  const factory GroceryList({
    required String groceryListId,
    required String title,
    required String selectedIcon,
    @Default('') String description,
    @Default(<String>[]) List<String> productIds,
    @Default(1) int usersCount,
  }) = GroceryList$;

  factory GroceryList.fromJson(Map<dynamic, dynamic> json) => _$GroceryListFromJson(Map<String, dynamic>.from(json));
}
