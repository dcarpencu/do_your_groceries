part of 'index.dart';

@freezed
class TakenPicture with _$TakenPicture {
  const factory TakenPicture({
    @JsonKey(fromJson: _xFileFromJson, toJson: _xFileToJson) required XFile? picture,
    required String imageLabel,
  }) = TakenPicture$;

  factory TakenPicture.fromJson(Map<dynamic, dynamic> json) => _$TakenPictureFromJson(Map<String, dynamic>.from(json));
}

XFile? _xFileFromJson(dynamic json) {
  if (json is String) {
    return XFile(json);
  }
  return null;
}

String? _xFileToJson(XFile? file) {
  return file?.path;
}
