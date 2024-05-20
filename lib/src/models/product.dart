part of 'index.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String productId,
    required String name,
    required double price,
    required String category,
    @Default('') String supermarket,
    @Default('') String tag,
    @Default(<String>[]) List<String> keyWords,
    @Default('') String image,
    @Default(1) int page,
    // @Default(0) final int quantity,
  }) = Product$;

  factory Product.fromJson(Map<dynamic, dynamic> json) => _$ProductFromJson(Map<String, dynamic>.from(json));
}
