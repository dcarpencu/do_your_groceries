part of 'index.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String email,
    required String username,
    @Default(<Product>[Product(name: 'David', price: 11, description: 'sad'), Product(name: 'name', price: 1, description: 'description')]) List<Product> userProductList,
}) = AppUser$;

  factory AppUser.fromJson(Map<dynamic, dynamic> json) => _$AppUserFromJson(Map<String, dynamic>.from(json));
}
