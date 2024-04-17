part of 'index.dart';

@freezed
class GroceryList with _$GroceryList {
  const factory GroceryList({
    required String groceryListId,
    required String title,
    @Default('') String description,
    @Default(<String>[]) List<String> productIds,
    // ignore: flutter_style_todos
    //TODO: Add icons for users to choose
  }) = GroceryList$;

  factory GroceryList.fromJson(Map<dynamic, dynamic> json) => _$GroceryListFromJson(Map<String, dynamic>.from(json));
}
