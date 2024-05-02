part of 'index.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String productId,
    required String name,
    required double price,
    @Default('') String image,
    @Default(1) int page,
    // @Default(0) final int quantity,
  }) = Product$;

  factory Product.fromJson(Map<dynamic, dynamic> json) => _$ProductFromJson(Map<String, dynamic>.from(json));
}
