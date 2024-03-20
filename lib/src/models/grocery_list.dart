part of 'index.dart';

@freezed
class GroceryList with _$GroceryList {
  const factory GroceryList({
    required String uid,
    required String title,
    @Default('') final String description,
}) = GroceryList$;

  factory GroceryList.fromJson(Map<dynamic, dynamic> json) => _$GroceryListFromJson(Map<String, dynamic>.from(json));
}
