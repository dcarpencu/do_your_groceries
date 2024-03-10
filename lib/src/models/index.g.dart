// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) =>
    _$AppState$Impl(
      user: json['user'] == null
          ? null
          : AppUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$AppUser$Impl _$$AppUser$ImplFromJson(Map<String, dynamic> json) =>
    _$AppUser$Impl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$AppUser$ImplToJson(_$AppUser$Impl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
    };
