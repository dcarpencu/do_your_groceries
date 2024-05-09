// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AppUser? get user => throw _privateConstructorUsedError;
  List<Product> get supermarketProducts => throw _privateConstructorUsedError;
  List<Product> get productsList => throw _privateConstructorUsedError;
  List<Product> get relatedProducts => throw _privateConstructorUsedError;
  Set<GroceryList> get groceryLists => throw _privateConstructorUsedError;
  String? get selectedGroceryList => throw _privateConstructorUsedError;
  Set<String> get pending => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  bool get contentLoaded => throw _privateConstructorUsedError;
  List<CameraInfo> get cameras => throw _privateConstructorUsedError;
  TakenPicture? get takenPicture => throw _privateConstructorUsedError;
  CameraInfo? get selectedCamera => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AppUser? user,
      List<Product> supermarketProducts,
      List<Product> productsList,
      List<Product> relatedProducts,
      Set<GroceryList> groceryLists,
      String? selectedGroceryList,
      Set<String> pending,
      int pageNumber,
      bool contentLoaded,
      List<CameraInfo> cameras,
      TakenPicture? takenPicture,
      CameraInfo? selectedCamera});

  $AppUserCopyWith<$Res>? get user;
  $TakenPictureCopyWith<$Res>? get takenPicture;
  $CameraInfoCopyWith<$Res>? get selectedCamera;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? supermarketProducts = null,
    Object? productsList = null,
    Object? relatedProducts = null,
    Object? groceryLists = null,
    Object? selectedGroceryList = freezed,
    Object? pending = null,
    Object? pageNumber = null,
    Object? contentLoaded = null,
    Object? cameras = null,
    Object? takenPicture = freezed,
    Object? selectedCamera = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      supermarketProducts: null == supermarketProducts
          ? _value.supermarketProducts
          : supermarketProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productsList: null == productsList
          ? _value.productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      relatedProducts: null == relatedProducts
          ? _value.relatedProducts
          : relatedProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      groceryLists: null == groceryLists
          ? _value.groceryLists
          : groceryLists // ignore: cast_nullable_to_non_nullable
              as Set<GroceryList>,
      selectedGroceryList: freezed == selectedGroceryList
          ? _value.selectedGroceryList
          : selectedGroceryList // ignore: cast_nullable_to_non_nullable
              as String?,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      contentLoaded: null == contentLoaded
          ? _value.contentLoaded
          : contentLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      cameras: null == cameras
          ? _value.cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraInfo>,
      takenPicture: freezed == takenPicture
          ? _value.takenPicture
          : takenPicture // ignore: cast_nullable_to_non_nullable
              as TakenPicture?,
      selectedCamera: freezed == selectedCamera
          ? _value.selectedCamera
          : selectedCamera // ignore: cast_nullable_to_non_nullable
              as CameraInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TakenPictureCopyWith<$Res>? get takenPicture {
    if (_value.takenPicture == null) {
      return null;
    }

    return $TakenPictureCopyWith<$Res>(_value.takenPicture!, (value) {
      return _then(_value.copyWith(takenPicture: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CameraInfoCopyWith<$Res>? get selectedCamera {
    if (_value.selectedCamera == null) {
      return null;
    }

    return $CameraInfoCopyWith<$Res>(_value.selectedCamera!, (value) {
      return _then(_value.copyWith(selectedCamera: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$ImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppState$ImplCopyWith(
          _$AppState$Impl value, $Res Function(_$AppState$Impl) then) =
      __$$AppState$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppUser? user,
      List<Product> supermarketProducts,
      List<Product> productsList,
      List<Product> relatedProducts,
      Set<GroceryList> groceryLists,
      String? selectedGroceryList,
      Set<String> pending,
      int pageNumber,
      bool contentLoaded,
      List<CameraInfo> cameras,
      TakenPicture? takenPicture,
      CameraInfo? selectedCamera});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $TakenPictureCopyWith<$Res>? get takenPicture;
  @override
  $CameraInfoCopyWith<$Res>? get selectedCamera;
}

/// @nodoc
class __$$AppState$ImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppState$Impl>
    implements _$$AppState$ImplCopyWith<$Res> {
  __$$AppState$ImplCopyWithImpl(
      _$AppState$Impl _value, $Res Function(_$AppState$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? supermarketProducts = null,
    Object? productsList = null,
    Object? relatedProducts = null,
    Object? groceryLists = null,
    Object? selectedGroceryList = freezed,
    Object? pending = null,
    Object? pageNumber = null,
    Object? contentLoaded = null,
    Object? cameras = null,
    Object? takenPicture = freezed,
    Object? selectedCamera = freezed,
  }) {
    return _then(_$AppState$Impl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      supermarketProducts: null == supermarketProducts
          ? _value._supermarketProducts
          : supermarketProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productsList: null == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      relatedProducts: null == relatedProducts
          ? _value._relatedProducts
          : relatedProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      groceryLists: null == groceryLists
          ? _value._groceryLists
          : groceryLists // ignore: cast_nullable_to_non_nullable
              as Set<GroceryList>,
      selectedGroceryList: freezed == selectedGroceryList
          ? _value.selectedGroceryList
          : selectedGroceryList // ignore: cast_nullable_to_non_nullable
              as String?,
      pending: null == pending
          ? _value._pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      contentLoaded: null == contentLoaded
          ? _value.contentLoaded
          : contentLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      cameras: null == cameras
          ? _value._cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraInfo>,
      takenPicture: freezed == takenPicture
          ? _value.takenPicture
          : takenPicture // ignore: cast_nullable_to_non_nullable
              as TakenPicture?,
      selectedCamera: freezed == selectedCamera
          ? _value.selectedCamera
          : selectedCamera // ignore: cast_nullable_to_non_nullable
              as CameraInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$Impl implements AppState$ {
  const _$AppState$Impl(
      {this.user,
      final List<Product> supermarketProducts = const <Product>[],
      final List<Product> productsList = const <Product>[],
      final List<Product> relatedProducts = const <Product>[],
      final Set<GroceryList> groceryLists = const <GroceryList>{},
      this.selectedGroceryList,
      final Set<String> pending = const <String>{},
      this.pageNumber = 1,
      this.contentLoaded = false,
      final List<CameraInfo> cameras = const <CameraInfo>[],
      this.takenPicture = null,
      this.selectedCamera = null})
      : _supermarketProducts = supermarketProducts,
        _productsList = productsList,
        _relatedProducts = relatedProducts,
        _groceryLists = groceryLists,
        _pending = pending,
        _cameras = cameras;

  factory _$AppState$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AppState$ImplFromJson(json);

  @override
  final AppUser? user;
  final List<Product> _supermarketProducts;
  @override
  @JsonKey()
  List<Product> get supermarketProducts {
    if (_supermarketProducts is EqualUnmodifiableListView)
      return _supermarketProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supermarketProducts);
  }

  final List<Product> _productsList;
  @override
  @JsonKey()
  List<Product> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  final List<Product> _relatedProducts;
  @override
  @JsonKey()
  List<Product> get relatedProducts {
    if (_relatedProducts is EqualUnmodifiableListView) return _relatedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedProducts);
  }

  final Set<GroceryList> _groceryLists;
  @override
  @JsonKey()
  Set<GroceryList> get groceryLists {
    if (_groceryLists is EqualUnmodifiableSetView) return _groceryLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_groceryLists);
  }

  @override
  final String? selectedGroceryList;
  final Set<String> _pending;
  @override
  @JsonKey()
  Set<String> get pending {
    if (_pending is EqualUnmodifiableSetView) return _pending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_pending);
  }

  @override
  @JsonKey()
  final int pageNumber;
  @override
  @JsonKey()
  final bool contentLoaded;
  final List<CameraInfo> _cameras;
  @override
  @JsonKey()
  List<CameraInfo> get cameras {
    if (_cameras is EqualUnmodifiableListView) return _cameras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cameras);
  }

  @override
  @JsonKey()
  final TakenPicture? takenPicture;
  @override
  @JsonKey()
  final CameraInfo? selectedCamera;

  @override
  String toString() {
    return 'AppState(user: $user, supermarketProducts: $supermarketProducts, productsList: $productsList, relatedProducts: $relatedProducts, groceryLists: $groceryLists, selectedGroceryList: $selectedGroceryList, pending: $pending, pageNumber: $pageNumber, contentLoaded: $contentLoaded, cameras: $cameras, takenPicture: $takenPicture, selectedCamera: $selectedCamera)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$Impl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._supermarketProducts, _supermarketProducts) &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList) &&
            const DeepCollectionEquality()
                .equals(other._relatedProducts, _relatedProducts) &&
            const DeepCollectionEquality()
                .equals(other._groceryLists, _groceryLists) &&
            (identical(other.selectedGroceryList, selectedGroceryList) ||
                other.selectedGroceryList == selectedGroceryList) &&
            const DeepCollectionEquality().equals(other._pending, _pending) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.contentLoaded, contentLoaded) ||
                other.contentLoaded == contentLoaded) &&
            const DeepCollectionEquality().equals(other._cameras, _cameras) &&
            (identical(other.takenPicture, takenPicture) ||
                other.takenPicture == takenPicture) &&
            (identical(other.selectedCamera, selectedCamera) ||
                other.selectedCamera == selectedCamera));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_supermarketProducts),
      const DeepCollectionEquality().hash(_productsList),
      const DeepCollectionEquality().hash(_relatedProducts),
      const DeepCollectionEquality().hash(_groceryLists),
      selectedGroceryList,
      const DeepCollectionEquality().hash(_pending),
      pageNumber,
      contentLoaded,
      const DeepCollectionEquality().hash(_cameras),
      takenPicture,
      selectedCamera);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      __$$AppState$ImplCopyWithImpl<_$AppState$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ImplToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {final AppUser? user,
      final List<Product> supermarketProducts,
      final List<Product> productsList,
      final List<Product> relatedProducts,
      final Set<GroceryList> groceryLists,
      final String? selectedGroceryList,
      final Set<String> pending,
      final int pageNumber,
      final bool contentLoaded,
      final List<CameraInfo> cameras,
      final TakenPicture? takenPicture,
      final CameraInfo? selectedCamera}) = _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) =
      _$AppState$Impl.fromJson;

  @override
  AppUser? get user;
  @override
  List<Product> get supermarketProducts;
  @override
  List<Product> get productsList;
  @override
  List<Product> get relatedProducts;
  @override
  Set<GroceryList> get groceryLists;
  @override
  String? get selectedGroceryList;
  @override
  Set<String> get pending;
  @override
  int get pageNumber;
  @override
  bool get contentLoaded;
  @override
  List<CameraInfo> get cameras;
  @override
  TakenPicture? get takenPicture;
  @override
  CameraInfo? get selectedCamera;
  @override
  @JsonKey(ignore: true)
  _$$AppState$ImplCopyWith<_$AppState$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  List<String> get groceryListIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String uid, String email, String username, List<String> groceryListIds});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? username = null,
    Object? groceryListIds = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      groceryListIds: null == groceryListIds
          ? _value.groceryListIds
          : groceryListIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUser$ImplCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUser$ImplCopyWith(
          _$AppUser$Impl value, $Res Function(_$AppUser$Impl) then) =
      __$$AppUser$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid, String email, String username, List<String> groceryListIds});
}

/// @nodoc
class __$$AppUser$ImplCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$AppUser$Impl>
    implements _$$AppUser$ImplCopyWith<$Res> {
  __$$AppUser$ImplCopyWithImpl(
      _$AppUser$Impl _value, $Res Function(_$AppUser$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? username = null,
    Object? groceryListIds = null,
  }) {
    return _then(_$AppUser$Impl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      groceryListIds: null == groceryListIds
          ? _value._groceryListIds
          : groceryListIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$Impl implements AppUser$ {
  const _$AppUser$Impl(
      {required this.uid,
      required this.email,
      required this.username,
      final List<String> groceryListIds = const <String>[]})
      : _groceryListIds = groceryListIds;

  factory _$AppUser$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AppUser$ImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;
  final List<String> _groceryListIds;
  @override
  @JsonKey()
  List<String> get groceryListIds {
    if (_groceryListIds is EqualUnmodifiableListView) return _groceryListIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groceryListIds);
  }

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, username: $username, groceryListIds: $groceryListIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUser$Impl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            const DeepCollectionEquality()
                .equals(other._groceryListIds, _groceryListIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, username,
      const DeepCollectionEquality().hash(_groceryListIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUser$ImplCopyWith<_$AppUser$Impl> get copyWith =>
      __$$AppUser$ImplCopyWithImpl<_$AppUser$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ImplToJson(
      this,
    );
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required final String uid,
      required final String email,
      required final String username,
      final List<String> groceryListIds}) = _$AppUser$Impl;

  factory AppUser$.fromJson(Map<String, dynamic> json) =
      _$AppUser$Impl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get username;
  @override
  List<String> get groceryListIds;
  @override
  @JsonKey(ignore: true)
  _$$AppUser$ImplCopyWith<_$AppUser$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Auchan _$AuchanFromJson(Map<String, dynamic> json) {
  return Auchan$.fromJson(json);
}

/// @nodoc
mixin _$Auchan {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuchanCopyWith<Auchan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuchanCopyWith<$Res> {
  factory $AuchanCopyWith(Auchan value, $Res Function(Auchan) then) =
      _$AuchanCopyWithImpl<$Res, Auchan>;
  @useResult
  $Res call({String title, String image, double price});
}

/// @nodoc
class _$AuchanCopyWithImpl<$Res, $Val extends Auchan>
    implements $AuchanCopyWith<$Res> {
  _$AuchanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Auchan$ImplCopyWith<$Res> implements $AuchanCopyWith<$Res> {
  factory _$$Auchan$ImplCopyWith(
          _$Auchan$Impl value, $Res Function(_$Auchan$Impl) then) =
      __$$Auchan$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String image, double price});
}

/// @nodoc
class __$$Auchan$ImplCopyWithImpl<$Res>
    extends _$AuchanCopyWithImpl<$Res, _$Auchan$Impl>
    implements _$$Auchan$ImplCopyWith<$Res> {
  __$$Auchan$ImplCopyWithImpl(
      _$Auchan$Impl _value, $Res Function(_$Auchan$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? price = null,
  }) {
    return _then(_$Auchan$Impl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Auchan$Impl implements Auchan$ {
  const _$Auchan$Impl(
      {required this.title, required this.image, required this.price});

  factory _$Auchan$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Auchan$ImplFromJson(json);

  @override
  final String title;
  @override
  final String image;
  @override
  final double price;

  @override
  String toString() {
    return 'Auchan(title: $title, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Auchan$Impl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Auchan$ImplCopyWith<_$Auchan$Impl> get copyWith =>
      __$$Auchan$ImplCopyWithImpl<_$Auchan$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Auchan$ImplToJson(
      this,
    );
  }
}

abstract class Auchan$ implements Auchan {
  const factory Auchan$(
      {required final String title,
      required final String image,
      required final double price}) = _$Auchan$Impl;

  factory Auchan$.fromJson(Map<String, dynamic> json) = _$Auchan$Impl.fromJson;

  @override
  String get title;
  @override
  String get image;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$Auchan$ImplCopyWith<_$Auchan$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product$.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get productId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String productId,
      String name,
      double price,
      List<String> tags,
      String image,
      int page});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? price = null,
    Object? tags = null,
    Object? image = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Product$ImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$Product$ImplCopyWith(
          _$Product$Impl value, $Res Function(_$Product$Impl) then) =
      __$$Product$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String name,
      double price,
      List<String> tags,
      String image,
      int page});
}

/// @nodoc
class __$$Product$ImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$Product$Impl>
    implements _$$Product$ImplCopyWith<$Res> {
  __$$Product$ImplCopyWithImpl(
      _$Product$Impl _value, $Res Function(_$Product$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? price = null,
    Object? tags = null,
    Object? image = null,
    Object? page = null,
  }) {
    return _then(_$Product$Impl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Product$Impl implements Product$ {
  const _$Product$Impl(
      {required this.productId,
      required this.name,
      required this.price,
      final List<String> tags = const <String>[],
      this.image = '',
      this.page = 1})
      : _tags = tags;

  factory _$Product$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Product$ImplFromJson(json);

  @override
  final String productId;
  @override
  final String name;
  @override
  final double price;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'Product(productId: $productId, name: $name, price: $price, tags: $tags, image: $image, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Product$Impl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, name, price,
      const DeepCollectionEquality().hash(_tags), image, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Product$ImplCopyWith<_$Product$Impl> get copyWith =>
      __$$Product$ImplCopyWithImpl<_$Product$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Product$ImplToJson(
      this,
    );
  }
}

abstract class Product$ implements Product {
  const factory Product$(
      {required final String productId,
      required final String name,
      required final double price,
      final List<String> tags,
      final String image,
      final int page}) = _$Product$Impl;

  factory Product$.fromJson(Map<String, dynamic> json) =
      _$Product$Impl.fromJson;

  @override
  String get productId;
  @override
  String get name;
  @override
  double get price;
  @override
  List<String> get tags;
  @override
  String get image;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$Product$ImplCopyWith<_$Product$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroceryList _$GroceryListFromJson(Map<String, dynamic> json) {
  return GroceryList$.fromJson(json);
}

/// @nodoc
mixin _$GroceryList {
  String get groceryListId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get selectedIcon => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get productIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryListCopyWith<GroceryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryListCopyWith<$Res> {
  factory $GroceryListCopyWith(
          GroceryList value, $Res Function(GroceryList) then) =
      _$GroceryListCopyWithImpl<$Res, GroceryList>;
  @useResult
  $Res call(
      {String groceryListId,
      String title,
      String selectedIcon,
      String description,
      List<String> productIds});
}

/// @nodoc
class _$GroceryListCopyWithImpl<$Res, $Val extends GroceryList>
    implements $GroceryListCopyWith<$Res> {
  _$GroceryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryListId = null,
    Object? title = null,
    Object? selectedIcon = null,
    Object? description = null,
    Object? productIds = null,
  }) {
    return _then(_value.copyWith(
      groceryListId: null == groceryListId
          ? _value.groceryListId
          : groceryListId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIcon: null == selectedIcon
          ? _value.selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      productIds: null == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroceryList$ImplCopyWith<$Res>
    implements $GroceryListCopyWith<$Res> {
  factory _$$GroceryList$ImplCopyWith(
          _$GroceryList$Impl value, $Res Function(_$GroceryList$Impl) then) =
      __$$GroceryList$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String groceryListId,
      String title,
      String selectedIcon,
      String description,
      List<String> productIds});
}

/// @nodoc
class __$$GroceryList$ImplCopyWithImpl<$Res>
    extends _$GroceryListCopyWithImpl<$Res, _$GroceryList$Impl>
    implements _$$GroceryList$ImplCopyWith<$Res> {
  __$$GroceryList$ImplCopyWithImpl(
      _$GroceryList$Impl _value, $Res Function(_$GroceryList$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryListId = null,
    Object? title = null,
    Object? selectedIcon = null,
    Object? description = null,
    Object? productIds = null,
  }) {
    return _then(_$GroceryList$Impl(
      groceryListId: null == groceryListId
          ? _value.groceryListId
          : groceryListId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIcon: null == selectedIcon
          ? _value.selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      productIds: null == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroceryList$Impl implements GroceryList$ {
  const _$GroceryList$Impl(
      {required this.groceryListId,
      required this.title,
      required this.selectedIcon,
      this.description = '',
      final List<String> productIds = const <String>[]})
      : _productIds = productIds;

  factory _$GroceryList$Impl.fromJson(Map<String, dynamic> json) =>
      _$$GroceryList$ImplFromJson(json);

  @override
  final String groceryListId;
  @override
  final String title;
  @override
  final String selectedIcon;
  @override
  @JsonKey()
  final String description;
  final List<String> _productIds;
  @override
  @JsonKey()
  List<String> get productIds {
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIds);
  }

  @override
  String toString() {
    return 'GroceryList(groceryListId: $groceryListId, title: $title, selectedIcon: $selectedIcon, description: $description, productIds: $productIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryList$Impl &&
            (identical(other.groceryListId, groceryListId) ||
                other.groceryListId == groceryListId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.selectedIcon, selectedIcon) ||
                other.selectedIcon == selectedIcon) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._productIds, _productIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groceryListId,
      title,
      selectedIcon,
      description,
      const DeepCollectionEquality().hash(_productIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroceryList$ImplCopyWith<_$GroceryList$Impl> get copyWith =>
      __$$GroceryList$ImplCopyWithImpl<_$GroceryList$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroceryList$ImplToJson(
      this,
    );
  }
}

abstract class GroceryList$ implements GroceryList {
  const factory GroceryList$(
      {required final String groceryListId,
      required final String title,
      required final String selectedIcon,
      final String description,
      final List<String> productIds}) = _$GroceryList$Impl;

  factory GroceryList$.fromJson(Map<String, dynamic> json) =
      _$GroceryList$Impl.fromJson;

  @override
  String get groceryListId;
  @override
  String get title;
  @override
  String get selectedIcon;
  @override
  String get description;
  @override
  List<String> get productIds;
  @override
  @JsonKey(ignore: true)
  _$$GroceryList$ImplCopyWith<_$GroceryList$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

CameraInfo _$CameraInfoFromJson(Map<String, dynamic> json) {
  return CameraInfo$.fromJson(json);
}

/// @nodoc
mixin _$CameraInfo {
  String get name => throw _privateConstructorUsedError;
  CameraLensDirection get lensDirection => throw _privateConstructorUsedError;
  int get sensorOrientation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CameraInfoCopyWith<CameraInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraInfoCopyWith<$Res> {
  factory $CameraInfoCopyWith(
          CameraInfo value, $Res Function(CameraInfo) then) =
      _$CameraInfoCopyWithImpl<$Res, CameraInfo>;
  @useResult
  $Res call(
      {String name, CameraLensDirection lensDirection, int sensorOrientation});
}

/// @nodoc
class _$CameraInfoCopyWithImpl<$Res, $Val extends CameraInfo>
    implements $CameraInfoCopyWith<$Res> {
  _$CameraInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lensDirection = null,
    Object? sensorOrientation = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lensDirection: null == lensDirection
          ? _value.lensDirection
          : lensDirection // ignore: cast_nullable_to_non_nullable
              as CameraLensDirection,
      sensorOrientation: null == sensorOrientation
          ? _value.sensorOrientation
          : sensorOrientation // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CameraInfo$ImplCopyWith<$Res>
    implements $CameraInfoCopyWith<$Res> {
  factory _$$CameraInfo$ImplCopyWith(
          _$CameraInfo$Impl value, $Res Function(_$CameraInfo$Impl) then) =
      __$$CameraInfo$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, CameraLensDirection lensDirection, int sensorOrientation});
}

/// @nodoc
class __$$CameraInfo$ImplCopyWithImpl<$Res>
    extends _$CameraInfoCopyWithImpl<$Res, _$CameraInfo$Impl>
    implements _$$CameraInfo$ImplCopyWith<$Res> {
  __$$CameraInfo$ImplCopyWithImpl(
      _$CameraInfo$Impl _value, $Res Function(_$CameraInfo$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lensDirection = null,
    Object? sensorOrientation = null,
  }) {
    return _then(_$CameraInfo$Impl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lensDirection: null == lensDirection
          ? _value.lensDirection
          : lensDirection // ignore: cast_nullable_to_non_nullable
              as CameraLensDirection,
      sensorOrientation: null == sensorOrientation
          ? _value.sensorOrientation
          : sensorOrientation // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CameraInfo$Impl implements CameraInfo$ {
  const _$CameraInfo$Impl(
      {required this.name,
      required this.lensDirection,
      required this.sensorOrientation});

  factory _$CameraInfo$Impl.fromJson(Map<String, dynamic> json) =>
      _$$CameraInfo$ImplFromJson(json);

  @override
  final String name;
  @override
  final CameraLensDirection lensDirection;
  @override
  final int sensorOrientation;

  @override
  String toString() {
    return 'CameraInfo(name: $name, lensDirection: $lensDirection, sensorOrientation: $sensorOrientation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraInfo$Impl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lensDirection, lensDirection) ||
                other.lensDirection == lensDirection) &&
            (identical(other.sensorOrientation, sensorOrientation) ||
                other.sensorOrientation == sensorOrientation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, lensDirection, sensorOrientation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraInfo$ImplCopyWith<_$CameraInfo$Impl> get copyWith =>
      __$$CameraInfo$ImplCopyWithImpl<_$CameraInfo$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CameraInfo$ImplToJson(
      this,
    );
  }
}

abstract class CameraInfo$ implements CameraInfo {
  const factory CameraInfo$(
      {required final String name,
      required final CameraLensDirection lensDirection,
      required final int sensorOrientation}) = _$CameraInfo$Impl;

  factory CameraInfo$.fromJson(Map<String, dynamic> json) =
      _$CameraInfo$Impl.fromJson;

  @override
  String get name;
  @override
  CameraLensDirection get lensDirection;
  @override
  int get sensorOrientation;
  @override
  @JsonKey(ignore: true)
  _$$CameraInfo$ImplCopyWith<_$CameraInfo$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

TakenPicture _$TakenPictureFromJson(Map<String, dynamic> json) {
  return TakenPicture$.fromJson(json);
}

/// @nodoc
mixin _$TakenPicture {
  @JsonKey(fromJson: _xFileFromJson, toJson: _xFileToJson)
  XFile? get picture => throw _privateConstructorUsedError;
  String get imageLabel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TakenPictureCopyWith<TakenPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakenPictureCopyWith<$Res> {
  factory $TakenPictureCopyWith(
          TakenPicture value, $Res Function(TakenPicture) then) =
      _$TakenPictureCopyWithImpl<$Res, TakenPicture>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _xFileFromJson, toJson: _xFileToJson) XFile? picture,
      String imageLabel});
}

/// @nodoc
class _$TakenPictureCopyWithImpl<$Res, $Val extends TakenPicture>
    implements $TakenPictureCopyWith<$Res> {
  _$TakenPictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picture = freezed,
    Object? imageLabel = null,
  }) {
    return _then(_value.copyWith(
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as XFile?,
      imageLabel: null == imageLabel
          ? _value.imageLabel
          : imageLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TakenPicture$ImplCopyWith<$Res>
    implements $TakenPictureCopyWith<$Res> {
  factory _$$TakenPicture$ImplCopyWith(
          _$TakenPicture$Impl value, $Res Function(_$TakenPicture$Impl) then) =
      __$$TakenPicture$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _xFileFromJson, toJson: _xFileToJson) XFile? picture,
      String imageLabel});
}

/// @nodoc
class __$$TakenPicture$ImplCopyWithImpl<$Res>
    extends _$TakenPictureCopyWithImpl<$Res, _$TakenPicture$Impl>
    implements _$$TakenPicture$ImplCopyWith<$Res> {
  __$$TakenPicture$ImplCopyWithImpl(
      _$TakenPicture$Impl _value, $Res Function(_$TakenPicture$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picture = freezed,
    Object? imageLabel = null,
  }) {
    return _then(_$TakenPicture$Impl(
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as XFile?,
      imageLabel: null == imageLabel
          ? _value.imageLabel
          : imageLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TakenPicture$Impl implements TakenPicture$ {
  const _$TakenPicture$Impl(
      {@JsonKey(fromJson: _xFileFromJson, toJson: _xFileToJson)
      required this.picture,
      required this.imageLabel});

  factory _$TakenPicture$Impl.fromJson(Map<String, dynamic> json) =>
      _$$TakenPicture$ImplFromJson(json);

  @override
  @JsonKey(fromJson: _xFileFromJson, toJson: _xFileToJson)
  final XFile? picture;
  @override
  final String imageLabel;

  @override
  String toString() {
    return 'TakenPicture(picture: $picture, imageLabel: $imageLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakenPicture$Impl &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.imageLabel, imageLabel) ||
                other.imageLabel == imageLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, picture, imageLabel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakenPicture$ImplCopyWith<_$TakenPicture$Impl> get copyWith =>
      __$$TakenPicture$ImplCopyWithImpl<_$TakenPicture$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TakenPicture$ImplToJson(
      this,
    );
  }
}

abstract class TakenPicture$ implements TakenPicture {
  const factory TakenPicture$(
      {@JsonKey(fromJson: _xFileFromJson, toJson: _xFileToJson)
      required final XFile? picture,
      required final String imageLabel}) = _$TakenPicture$Impl;

  factory TakenPicture$.fromJson(Map<String, dynamic> json) =
      _$TakenPicture$Impl.fromJson;

  @override
  @JsonKey(fromJson: _xFileFromJson, toJson: _xFileToJson)
  XFile? get picture;
  @override
  String get imageLabel;
  @override
  @JsonKey(ignore: true)
  _$$TakenPicture$ImplCopyWith<_$TakenPicture$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
