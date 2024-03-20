part of 'index.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String name,
    required double price,
    //final String? image,
    // @Default(0) final int quantity,
}) = Product$;

  factory Product.fromJson(Map<dynamic, dynamic> json) => _$ProductFromJson(Map<String, dynamic>.from(json));
}
