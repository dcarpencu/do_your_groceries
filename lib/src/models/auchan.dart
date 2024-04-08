part of 'index.dart';

@freezed
class Auchan with _$Auchan {
  const factory Auchan({
    required String title,
    required String image,
    required double price,
  }) = Auchan$;

  factory Auchan.fromJson(Map<dynamic, dynamic> json) => _$AuchanFromJson(Map<String, dynamic>.from(json));
}
