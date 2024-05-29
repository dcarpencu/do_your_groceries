part of 'index.dart';

@freezed
class AddRequest with _$AddRequest {
  const factory AddRequest({required String senderName,
  required String senderEmail,
  required String senderId,
  required String groceryListId,
  }) = AddRequest$;

  factory AddRequest.fromJson(Map<dynamic, dynamic> json) => _$AddRequestFromJson(Map<String, dynamic>.from(json));
}