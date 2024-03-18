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
      isLoading: json['isLoading'] as bool? ?? true,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Auchan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Auchan>[],
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'isLoading': instance.isLoading,
      'products': instance.products,
    };

_$AppUser$Impl _$$AppUser$ImplFromJson(Map<String, dynamic> json) =>
    _$AppUser$Impl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      userProductList: (json['userProductList'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Product>[],
    );

Map<String, dynamic> _$$AppUser$ImplToJson(_$AppUser$Impl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'userProductList': instance.userProductList,
    };

_$Auchan$Impl _$$Auchan$ImplFromJson(Map<String, dynamic> json) =>
    _$Auchan$Impl(
      title: json['title'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$Auchan$ImplToJson(_$Auchan$Impl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'price': instance.price,
    };

_$Product$Impl _$$Product$ImplFromJson(Map<String, dynamic> json) =>
    _$Product$Impl(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String?,
      quantity: json['quantity'] as int? ?? 0,
    );

Map<String, dynamic> _$$Product$ImplToJson(_$Product$Impl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'image': instance.image,
      'quantity': instance.quantity,
    };
