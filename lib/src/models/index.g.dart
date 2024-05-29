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
      productsGroceryList: (json['productsGroceryList'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Product>[],
      relatedProducts: (json['relatedProducts'] as List<dynamic>?)
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
      pageNumber: (json['pageNumber'] as num?)?.toInt() ?? 1,
      contentLoaded: json['contentLoaded'] as bool? ?? false,
      cameras: (json['cameras'] as List<dynamic>?)
              ?.map((e) => CameraInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CameraInfo>[],
      takenPicture: json['takenPicture'] == null
          ? null
          : TakenPicture.fromJson(json['takenPicture'] as Map<String, dynamic>),
      selectedCamera: json['selectedCamera'] == null
          ? null
          : CameraInfo.fromJson(json['selectedCamera'] as Map<String, dynamic>),
      users: (json['users'] as List<dynamic>?)
              ?.map((e) => AppUser.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const <AppUser>{},
      requests: (json['requests'] as List<dynamic>?)
              ?.map((e) => AddRequest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AddRequest>[],
      isNotifications: json['isNotifications'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'supermarketProducts': instance.supermarketProducts,
      'productsGroceryList': instance.productsGroceryList,
      'relatedProducts': instance.relatedProducts,
      'groceryLists': instance.groceryLists.toList(),
      'selectedGroceryList': instance.selectedGroceryList,
      'pending': instance.pending.toList(),
      'pageNumber': instance.pageNumber,
      'contentLoaded': instance.contentLoaded,
      'cameras': instance.cameras,
      'takenPicture': instance.takenPicture,
      'selectedCamera': instance.selectedCamera,
      'users': instance.users.toList(),
      'requests': instance.requests,
      'isNotifications': instance.isNotifications,
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
      requests: (json['requests'] as List<dynamic>?)
              ?.map((e) => AddRequest.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const <AddRequest>{},
    );

Map<String, dynamic> _$$AppUser$ImplToJson(_$AppUser$Impl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'groceryListIds': instance.groceryListIds,
      'requests': instance.requests.toList(),
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
      category: json['category'] as String,
      supermarket: json['supermarket'] as String? ?? '',
      tag: json['tag'] as String? ?? '',
      keyWords: (json['keyWords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      image: json['image'] as String? ?? '',
      page: (json['page'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$Product$ImplToJson(_$Product$Impl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'price': instance.price,
      'category': instance.category,
      'supermarket': instance.supermarket,
      'tag': instance.tag,
      'keyWords': instance.keyWords,
      'image': instance.image,
      'page': instance.page,
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

_$CameraInfo$Impl _$$CameraInfo$ImplFromJson(Map<String, dynamic> json) =>
    _$CameraInfo$Impl(
      name: json['name'] as String,
      lensDirection:
          $enumDecode(_$CameraLensDirectionEnumMap, json['lensDirection']),
      sensorOrientation: (json['sensorOrientation'] as num).toInt(),
    );

Map<String, dynamic> _$$CameraInfo$ImplToJson(_$CameraInfo$Impl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lensDirection': _$CameraLensDirectionEnumMap[instance.lensDirection]!,
      'sensorOrientation': instance.sensorOrientation,
    };

const _$CameraLensDirectionEnumMap = {
  CameraLensDirection.front: 'front',
  CameraLensDirection.back: 'back',
  CameraLensDirection.external: 'external',
};

_$TakenPicture$Impl _$$TakenPicture$ImplFromJson(Map<String, dynamic> json) =>
    _$TakenPicture$Impl(
      picture: _xFileFromJson(json['picture']),
      imageLabel: json['imageLabel'] as String,
    );

Map<String, dynamic> _$$TakenPicture$ImplToJson(_$TakenPicture$Impl instance) =>
    <String, dynamic>{
      'picture': _xFileToJson(instance.picture),
      'imageLabel': instance.imageLabel,
    };

_$AddRequest$Impl _$$AddRequest$ImplFromJson(Map<String, dynamic> json) =>
    _$AddRequest$Impl(
      senderName: json['senderName'] as String,
      senderEmail: json['senderEmail'] as String,
      senderId: json['senderId'] as String,
      groceryListId: json['groceryListId'] as String,
    );

Map<String, dynamic> _$$AddRequest$ImplToJson(_$AddRequest$Impl instance) =>
    <String, dynamic>{
      'senderName': instance.senderName,
      'senderEmail': instance.senderEmail,
      'senderId': instance.senderId,
      'groceryListId': instance.groceryListId,
    };
