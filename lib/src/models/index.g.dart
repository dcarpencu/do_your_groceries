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
      supermarketProducts: (json['supermarketProducts'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Product>[],
      productsList: (json['productsList'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Product>[],
      groceryLists: (json['groceryLists'] as List<dynamic>?)
              ?.map((e) => GroceryList.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const <GroceryList>{},
      selectedGroceryList: json['selectedGroceryList'] as String?,
      pending: (json['pending'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const <String>{},
      pageNumber: json['pageNumber'] as int? ?? 1,
      contentLoaded: json['contentLoaded'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'supermarketProducts': instance.supermarketProducts,
      'productsList': instance.productsList,
      'groceryLists': instance.groceryLists.toList(),
      'selectedGroceryList': instance.selectedGroceryList,
      'pending': instance.pending.toList(),
      'pageNumber': instance.pageNumber,
      'contentLoaded': instance.contentLoaded,
    };

_$AppUser$Impl _$$AppUser$ImplFromJson(Map<String, dynamic> json) =>
    _$AppUser$Impl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      groceryListIds: (json['groceryListIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$AppUser$ImplToJson(_$AppUser$Impl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'groceryListIds': instance.groceryListIds,
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
      productId: json['productId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$$Product$ImplToJson(_$Product$Impl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'price': instance.price,
      'image': instance.image,
    };

_$GroceryList$Impl _$$GroceryList$ImplFromJson(Map<String, dynamic> json) =>
    _$GroceryList$Impl(
      groceryListId: json['groceryListId'] as String,
      title: json['title'] as String,
      selectedIcon: json['selectedIcon'] as String,
      description: json['description'] as String? ?? '',
      productIds: (json['productIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$GroceryList$ImplToJson(_$GroceryList$Impl instance) =>
    <String, dynamic>{
      'groceryListId': instance.groceryListId,
      'title': instance.title,
      'selectedIcon': instance.selectedIcon,
      'description': instance.description,
      'productIds': instance.productIds,
    };
