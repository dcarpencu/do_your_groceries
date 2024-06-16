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
  List<Product> get productsGroceryList => throw _privateConstructorUsedError;
  List<Product> get relatedProducts => throw _privateConstructorUsedError;
  Set<GroceryList> get groceryLists => throw _privateConstructorUsedError;
  GroceryList? get selectedGroceryList => throw _privateConstructorUsedError;
  Product? get selectedProduct => throw _privateConstructorUsedError;
  Set<String> get pending => throw _privateConstructorUsedError;
  List<CameraInfo> get cameras => throw _privateConstructorUsedError;
  TakenPicture? get takenPicture => throw _privateConstructorUsedError;
  CameraInfo? get selectedCamera => throw _privateConstructorUsedError;
  Set<AppUser> get users => throw _privateConstructorUsedError;
  List<AddRequest> get requests => throw _privateConstructorUsedError;
  bool get isNotifications => throw _privateConstructorUsedError;
  Set<CuisineFilter> get cuisines => throw _privateConstructorUsedError;
  String? get generatorResponse => throw _privateConstructorUsedError;
  String? get cuisineText => throw _privateConstructorUsedError;
  String? get basicIngredientsText => throw _privateConstructorUsedError;
  String? get dietaryRestrictionsText => throw _privateConstructorUsedError;
  List<Product> get supermarketProducts => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  bool get productsFinished => throw _privateConstructorUsedError;

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
      List<Product> productsGroceryList,
      List<Product> relatedProducts,
      Set<GroceryList> groceryLists,
      GroceryList? selectedGroceryList,
      Product? selectedProduct,
      Set<String> pending,
      List<CameraInfo> cameras,
      TakenPicture? takenPicture,
      CameraInfo? selectedCamera,
      Set<AppUser> users,
      List<AddRequest> requests,
      bool isNotifications,
      Set<CuisineFilter> cuisines,
      String? generatorResponse,
      String? cuisineText,
      String? basicIngredientsText,
      String? dietaryRestrictionsText,
      List<Product> supermarketProducts,
      int pageNumber,
      bool productsFinished});

  $AppUserCopyWith<$Res>? get user;
  $GroceryListCopyWith<$Res>? get selectedGroceryList;
  $ProductCopyWith<$Res>? get selectedProduct;
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
    Object? productsGroceryList = null,
    Object? relatedProducts = null,
    Object? groceryLists = null,
    Object? selectedGroceryList = freezed,
    Object? selectedProduct = freezed,
    Object? pending = null,
    Object? cameras = null,
    Object? takenPicture = freezed,
    Object? selectedCamera = freezed,
    Object? users = null,
    Object? requests = null,
    Object? isNotifications = null,
    Object? cuisines = null,
    Object? generatorResponse = freezed,
    Object? cuisineText = freezed,
    Object? basicIngredientsText = freezed,
    Object? dietaryRestrictionsText = freezed,
    Object? supermarketProducts = null,
    Object? pageNumber = null,
    Object? productsFinished = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      productsGroceryList: null == productsGroceryList
          ? _value.productsGroceryList
          : productsGroceryList // ignore: cast_nullable_to_non_nullable
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
              as GroceryList?,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
      pending: null == pending
          ? _value.pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Set<String>,
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
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Set<AppUser>,
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<AddRequest>,
      isNotifications: null == isNotifications
          ? _value.isNotifications
          : isNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      cuisines: null == cuisines
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as Set<CuisineFilter>,
      generatorResponse: freezed == generatorResponse
          ? _value.generatorResponse
          : generatorResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      cuisineText: freezed == cuisineText
          ? _value.cuisineText
          : cuisineText // ignore: cast_nullable_to_non_nullable
              as String?,
      basicIngredientsText: freezed == basicIngredientsText
          ? _value.basicIngredientsText
          : basicIngredientsText // ignore: cast_nullable_to_non_nullable
              as String?,
      dietaryRestrictionsText: freezed == dietaryRestrictionsText
          ? _value.dietaryRestrictionsText
          : dietaryRestrictionsText // ignore: cast_nullable_to_non_nullable
              as String?,
      supermarketProducts: null == supermarketProducts
          ? _value.supermarketProducts
          : supermarketProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      productsFinished: null == productsFinished
          ? _value.productsFinished
          : productsFinished // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $GroceryListCopyWith<$Res>? get selectedGroceryList {
    if (_value.selectedGroceryList == null) {
      return null;
    }

    return $GroceryListCopyWith<$Res>(_value.selectedGroceryList!, (value) {
      return _then(_value.copyWith(selectedGroceryList: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get selectedProduct {
    if (_value.selectedProduct == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.selectedProduct!, (value) {
      return _then(_value.copyWith(selectedProduct: value) as $Val);
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
      List<Product> productsGroceryList,
      List<Product> relatedProducts,
      Set<GroceryList> groceryLists,
      GroceryList? selectedGroceryList,
      Product? selectedProduct,
      Set<String> pending,
      List<CameraInfo> cameras,
      TakenPicture? takenPicture,
      CameraInfo? selectedCamera,
      Set<AppUser> users,
      List<AddRequest> requests,
      bool isNotifications,
      Set<CuisineFilter> cuisines,
      String? generatorResponse,
      String? cuisineText,
      String? basicIngredientsText,
      String? dietaryRestrictionsText,
      List<Product> supermarketProducts,
      int pageNumber,
      bool productsFinished});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $GroceryListCopyWith<$Res>? get selectedGroceryList;
  @override
  $ProductCopyWith<$Res>? get selectedProduct;
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
    Object? productsGroceryList = null,
    Object? relatedProducts = null,
    Object? groceryLists = null,
    Object? selectedGroceryList = freezed,
    Object? selectedProduct = freezed,
    Object? pending = null,
    Object? cameras = null,
    Object? takenPicture = freezed,
    Object? selectedCamera = freezed,
    Object? users = null,
    Object? requests = null,
    Object? isNotifications = null,
    Object? cuisines = null,
    Object? generatorResponse = freezed,
    Object? cuisineText = freezed,
    Object? basicIngredientsText = freezed,
    Object? dietaryRestrictionsText = freezed,
    Object? supermarketProducts = null,
    Object? pageNumber = null,
    Object? productsFinished = null,
  }) {
    return _then(_$AppState$Impl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      productsGroceryList: null == productsGroceryList
          ? _value._productsGroceryList
          : productsGroceryList // ignore: cast_nullable_to_non_nullable
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
              as GroceryList?,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
      pending: null == pending
          ? _value._pending
          : pending // ignore: cast_nullable_to_non_nullable
              as Set<String>,
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
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as Set<AppUser>,
      requests: null == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as List<AddRequest>,
      isNotifications: null == isNotifications
          ? _value.isNotifications
          : isNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
      cuisines: null == cuisines
          ? _value._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as Set<CuisineFilter>,
      generatorResponse: freezed == generatorResponse
          ? _value.generatorResponse
          : generatorResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      cuisineText: freezed == cuisineText
          ? _value.cuisineText
          : cuisineText // ignore: cast_nullable_to_non_nullable
              as String?,
      basicIngredientsText: freezed == basicIngredientsText
          ? _value.basicIngredientsText
          : basicIngredientsText // ignore: cast_nullable_to_non_nullable
              as String?,
      dietaryRestrictionsText: freezed == dietaryRestrictionsText
          ? _value.dietaryRestrictionsText
          : dietaryRestrictionsText // ignore: cast_nullable_to_non_nullable
              as String?,
      supermarketProducts: null == supermarketProducts
          ? _value._supermarketProducts
          : supermarketProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      productsFinished: null == productsFinished
          ? _value.productsFinished
          : productsFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$Impl implements AppState$ {
  const _$AppState$Impl(
      {this.user,
      final List<Product> productsGroceryList = const <Product>[],
      final List<Product> relatedProducts = const <Product>[],
      final Set<GroceryList> groceryLists = const <GroceryList>{},
      this.selectedGroceryList,
      this.selectedProduct,
      final Set<String> pending = const <String>{},
      final List<CameraInfo> cameras = const <CameraInfo>[],
      this.takenPicture = null,
      this.selectedCamera = null,
      final Set<AppUser> users = const <AppUser>{},
      final List<AddRequest> requests = const <AddRequest>[],
      this.isNotifications = false,
      final Set<CuisineFilter> cuisines = const <CuisineFilter>{},
      this.generatorResponse,
      this.cuisineText,
      this.basicIngredientsText,
      this.dietaryRestrictionsText,
      final List<Product> supermarketProducts = const <Product>[],
      this.pageNumber = 1,
      this.productsFinished = false})
      : _productsGroceryList = productsGroceryList,
        _relatedProducts = relatedProducts,
        _groceryLists = groceryLists,
        _pending = pending,
        _cameras = cameras,
        _users = users,
        _requests = requests,
        _cuisines = cuisines,
        _supermarketProducts = supermarketProducts;

  factory _$AppState$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AppState$ImplFromJson(json);

  @override
  final AppUser? user;
  final List<Product> _productsGroceryList;
  @override
  @JsonKey()
  List<Product> get productsGroceryList {
    if (_productsGroceryList is EqualUnmodifiableListView)
      return _productsGroceryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsGroceryList);
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
  final GroceryList? selectedGroceryList;
  @override
  final Product? selectedProduct;
  final Set<String> _pending;
  @override
  @JsonKey()
  Set<String> get pending {
    if (_pending is EqualUnmodifiableSetView) return _pending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_pending);
  }

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
  final Set<AppUser> _users;
  @override
  @JsonKey()
  Set<AppUser> get users {
    if (_users is EqualUnmodifiableSetView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_users);
  }

  final List<AddRequest> _requests;
  @override
  @JsonKey()
  List<AddRequest> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  @override
  @JsonKey()
  final bool isNotifications;
  final Set<CuisineFilter> _cuisines;
  @override
  @JsonKey()
  Set<CuisineFilter> get cuisines {
    if (_cuisines is EqualUnmodifiableSetView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_cuisines);
  }

  @override
  final String? generatorResponse;
  @override
  final String? cuisineText;
  @override
  final String? basicIngredientsText;
  @override
  final String? dietaryRestrictionsText;
  final List<Product> _supermarketProducts;
  @override
  @JsonKey()
  List<Product> get supermarketProducts {
    if (_supermarketProducts is EqualUnmodifiableListView)
      return _supermarketProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supermarketProducts);
  }

  @override
  @JsonKey()
  final int pageNumber;
  @override
  @JsonKey()
  final bool productsFinished;

  @override
  String toString() {
    return 'AppState(user: $user, productsGroceryList: $productsGroceryList, relatedProducts: $relatedProducts, groceryLists: $groceryLists, selectedGroceryList: $selectedGroceryList, selectedProduct: $selectedProduct, pending: $pending, cameras: $cameras, takenPicture: $takenPicture, selectedCamera: $selectedCamera, users: $users, requests: $requests, isNotifications: $isNotifications, cuisines: $cuisines, generatorResponse: $generatorResponse, cuisineText: $cuisineText, basicIngredientsText: $basicIngredientsText, dietaryRestrictionsText: $dietaryRestrictionsText, supermarketProducts: $supermarketProducts, pageNumber: $pageNumber, productsFinished: $productsFinished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$Impl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._productsGroceryList, _productsGroceryList) &&
            const DeepCollectionEquality()
                .equals(other._relatedProducts, _relatedProducts) &&
            const DeepCollectionEquality()
                .equals(other._groceryLists, _groceryLists) &&
            (identical(other.selectedGroceryList, selectedGroceryList) ||
                other.selectedGroceryList == selectedGroceryList) &&
            (identical(other.selectedProduct, selectedProduct) ||
                other.selectedProduct == selectedProduct) &&
            const DeepCollectionEquality().equals(other._pending, _pending) &&
            const DeepCollectionEquality().equals(other._cameras, _cameras) &&
            (identical(other.takenPicture, takenPicture) ||
                other.takenPicture == takenPicture) &&
            (identical(other.selectedCamera, selectedCamera) ||
                other.selectedCamera == selectedCamera) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._requests, _requests) &&
            (identical(other.isNotifications, isNotifications) ||
                other.isNotifications == isNotifications) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            (identical(other.generatorResponse, generatorResponse) ||
                other.generatorResponse == generatorResponse) &&
            (identical(other.cuisineText, cuisineText) ||
                other.cuisineText == cuisineText) &&
            (identical(other.basicIngredientsText, basicIngredientsText) ||
                other.basicIngredientsText == basicIngredientsText) &&
            (identical(
                    other.dietaryRestrictionsText, dietaryRestrictionsText) ||
                other.dietaryRestrictionsText == dietaryRestrictionsText) &&
            const DeepCollectionEquality()
                .equals(other._supermarketProducts, _supermarketProducts) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.productsFinished, productsFinished) ||
                other.productsFinished == productsFinished));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        user,
        const DeepCollectionEquality().hash(_productsGroceryList),
        const DeepCollectionEquality().hash(_relatedProducts),
        const DeepCollectionEquality().hash(_groceryLists),
        selectedGroceryList,
        selectedProduct,
        const DeepCollectionEquality().hash(_pending),
        const DeepCollectionEquality().hash(_cameras),
        takenPicture,
        selectedCamera,
        const DeepCollectionEquality().hash(_users),
        const DeepCollectionEquality().hash(_requests),
        isNotifications,
        const DeepCollectionEquality().hash(_cuisines),
        generatorResponse,
        cuisineText,
        basicIngredientsText,
        dietaryRestrictionsText,
        const DeepCollectionEquality().hash(_supermarketProducts),
        pageNumber,
        productsFinished
      ]);

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
      final List<Product> productsGroceryList,
      final List<Product> relatedProducts,
      final Set<GroceryList> groceryLists,
      final GroceryList? selectedGroceryList,
      final Product? selectedProduct,
      final Set<String> pending,
      final List<CameraInfo> cameras,
      final TakenPicture? takenPicture,
      final CameraInfo? selectedCamera,
      final Set<AppUser> users,
      final List<AddRequest> requests,
      final bool isNotifications,
      final Set<CuisineFilter> cuisines,
      final String? generatorResponse,
      final String? cuisineText,
      final String? basicIngredientsText,
      final String? dietaryRestrictionsText,
      final List<Product> supermarketProducts,
      final int pageNumber,
      final bool productsFinished}) = _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) =
      _$AppState$Impl.fromJson;

  @override
  AppUser? get user;
  @override
  List<Product> get productsGroceryList;
  @override
  List<Product> get relatedProducts;
  @override
  Set<GroceryList> get groceryLists;
  @override
  GroceryList? get selectedGroceryList;
  @override
  Product? get selectedProduct;
  @override
  Set<String> get pending;
  @override
  List<CameraInfo> get cameras;
  @override
  TakenPicture? get takenPicture;
  @override
  CameraInfo? get selectedCamera;
  @override
  Set<AppUser> get users;
  @override
  List<AddRequest> get requests;
  @override
  bool get isNotifications;
  @override
  Set<CuisineFilter> get cuisines;
  @override
  String? get generatorResponse;
  @override
  String? get cuisineText;
  @override
  String? get basicIngredientsText;
  @override
  String? get dietaryRestrictionsText;
  @override
  List<Product> get supermarketProducts;
  @override
  int get pageNumber;
  @override
  bool get productsFinished;
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
  Set<AddRequest> get requests => throw _privateConstructorUsedError;

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
      {String uid,
      String email,
      String username,
      List<String> groceryListIds,
      Set<AddRequest> requests});
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
    Object? requests = null,
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
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as Set<AddRequest>,
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
      {String uid,
      String email,
      String username,
      List<String> groceryListIds,
      Set<AddRequest> requests});
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
    Object? requests = null,
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
      requests: null == requests
          ? _value._requests
          : requests // ignore: cast_nullable_to_non_nullable
              as Set<AddRequest>,
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
      final List<String> groceryListIds = const <String>[],
      final Set<AddRequest> requests = const <AddRequest>{}})
      : _groceryListIds = groceryListIds,
        _requests = requests;

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

  final Set<AddRequest> _requests;
  @override
  @JsonKey()
  Set<AddRequest> get requests {
    if (_requests is EqualUnmodifiableSetView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_requests);
  }

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, username: $username, groceryListIds: $groceryListIds, requests: $requests)';
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
                .equals(other._groceryListIds, _groceryListIds) &&
            const DeepCollectionEquality().equals(other._requests, _requests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      email,
      username,
      const DeepCollectionEquality().hash(_groceryListIds),
      const DeepCollectionEquality().hash(_requests));

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
      final List<String> groceryListIds,
      final Set<AddRequest> requests}) = _$AppUser$Impl;

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
  Set<AddRequest> get requests;
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
  String get category => throw _privateConstructorUsedError;
  String get supermarket => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  List<String> get keyWords => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get createdByUser => throw _privateConstructorUsedError;

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
      String category,
      String supermarket,
      String tag,
      List<String> keyWords,
      String image,
      int page,
      bool createdByUser});
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
    Object? category = null,
    Object? supermarket = null,
    Object? tag = null,
    Object? keyWords = null,
    Object? image = null,
    Object? page = null,
    Object? createdByUser = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      supermarket: null == supermarket
          ? _value.supermarket
          : supermarket // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      keyWords: null == keyWords
          ? _value.keyWords
          : keyWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      createdByUser: null == createdByUser
          ? _value.createdByUser
          : createdByUser // ignore: cast_nullable_to_non_nullable
              as bool,
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
      String category,
      String supermarket,
      String tag,
      List<String> keyWords,
      String image,
      int page,
      bool createdByUser});
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
    Object? category = null,
    Object? supermarket = null,
    Object? tag = null,
    Object? keyWords = null,
    Object? image = null,
    Object? page = null,
    Object? createdByUser = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      supermarket: null == supermarket
          ? _value.supermarket
          : supermarket // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      keyWords: null == keyWords
          ? _value._keyWords
          : keyWords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      createdByUser: null == createdByUser
          ? _value.createdByUser
          : createdByUser // ignore: cast_nullable_to_non_nullable
              as bool,
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
      required this.category,
      this.supermarket = '',
      this.tag = '',
      final List<String> keyWords = const <String>[],
      this.image = '',
      this.page = 1,
      this.createdByUser = false})
      : _keyWords = keyWords;

  factory _$Product$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Product$ImplFromJson(json);

  @override
  final String productId;
  @override
  final String name;
  @override
  final double price;
  @override
  final String category;
  @override
  @JsonKey()
  final String supermarket;
  @override
  @JsonKey()
  final String tag;
  final List<String> _keyWords;
  @override
  @JsonKey()
  List<String> get keyWords {
    if (_keyWords is EqualUnmodifiableListView) return _keyWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyWords);
  }

  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool createdByUser;

  @override
  String toString() {
    return 'Product(productId: $productId, name: $name, price: $price, category: $category, supermarket: $supermarket, tag: $tag, keyWords: $keyWords, image: $image, page: $page, createdByUser: $createdByUser)';
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
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.supermarket, supermarket) ||
                other.supermarket == supermarket) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            const DeepCollectionEquality().equals(other._keyWords, _keyWords) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.createdByUser, createdByUser) ||
                other.createdByUser == createdByUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      name,
      price,
      category,
      supermarket,
      tag,
      const DeepCollectionEquality().hash(_keyWords),
      image,
      page,
      createdByUser);

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
      required final String category,
      final String supermarket,
      final String tag,
      final List<String> keyWords,
      final String image,
      final int page,
      final bool createdByUser}) = _$Product$Impl;

  factory Product$.fromJson(Map<String, dynamic> json) =
      _$Product$Impl.fromJson;

  @override
  String get productId;
  @override
  String get name;
  @override
  double get price;
  @override
  String get category;
  @override
  String get supermarket;
  @override
  String get tag;
  @override
  List<String> get keyWords;
  @override
  String get image;
  @override
  int get page;
  @override
  bool get createdByUser;
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
  int get usersCount => throw _privateConstructorUsedError;

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
      List<String> productIds,
      int usersCount});
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
    Object? usersCount = null,
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
      usersCount: null == usersCount
          ? _value.usersCount
          : usersCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      List<String> productIds,
      int usersCount});
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
    Object? usersCount = null,
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
      usersCount: null == usersCount
          ? _value.usersCount
          : usersCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      final List<String> productIds = const <String>[],
      this.usersCount = 1})
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
  @JsonKey()
  final int usersCount;

  @override
  String toString() {
    return 'GroceryList(groceryListId: $groceryListId, title: $title, selectedIcon: $selectedIcon, description: $description, productIds: $productIds, usersCount: $usersCount)';
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
                .equals(other._productIds, _productIds) &&
            (identical(other.usersCount, usersCount) ||
                other.usersCount == usersCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groceryListId,
      title,
      selectedIcon,
      description,
      const DeepCollectionEquality().hash(_productIds),
      usersCount);

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
      final List<String> productIds,
      final int usersCount}) = _$GroceryList$Impl;

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
  int get usersCount;
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

AddRequest _$AddRequestFromJson(Map<String, dynamic> json) {
  return AddRequest$.fromJson(json);
}

/// @nodoc
mixin _$AddRequest {
  String get senderName => throw _privateConstructorUsedError;
  String get senderEmail => throw _privateConstructorUsedError;
  String get senderId => throw _privateConstructorUsedError;
  String get groceryListId => throw _privateConstructorUsedError;
  String get listName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddRequestCopyWith<AddRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRequestCopyWith<$Res> {
  factory $AddRequestCopyWith(
          AddRequest value, $Res Function(AddRequest) then) =
      _$AddRequestCopyWithImpl<$Res, AddRequest>;
  @useResult
  $Res call(
      {String senderName,
      String senderEmail,
      String senderId,
      String groceryListId,
      String listName});
}

/// @nodoc
class _$AddRequestCopyWithImpl<$Res, $Val extends AddRequest>
    implements $AddRequestCopyWith<$Res> {
  _$AddRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = null,
    Object? senderEmail = null,
    Object? senderId = null,
    Object? groceryListId = null,
    Object? listName = null,
  }) {
    return _then(_value.copyWith(
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderEmail: null == senderEmail
          ? _value.senderEmail
          : senderEmail // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      groceryListId: null == groceryListId
          ? _value.groceryListId
          : groceryListId // ignore: cast_nullable_to_non_nullable
              as String,
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddRequest$ImplCopyWith<$Res>
    implements $AddRequestCopyWith<$Res> {
  factory _$$AddRequest$ImplCopyWith(
          _$AddRequest$Impl value, $Res Function(_$AddRequest$Impl) then) =
      __$$AddRequest$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String senderName,
      String senderEmail,
      String senderId,
      String groceryListId,
      String listName});
}

/// @nodoc
class __$$AddRequest$ImplCopyWithImpl<$Res>
    extends _$AddRequestCopyWithImpl<$Res, _$AddRequest$Impl>
    implements _$$AddRequest$ImplCopyWith<$Res> {
  __$$AddRequest$ImplCopyWithImpl(
      _$AddRequest$Impl _value, $Res Function(_$AddRequest$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = null,
    Object? senderEmail = null,
    Object? senderId = null,
    Object? groceryListId = null,
    Object? listName = null,
  }) {
    return _then(_$AddRequest$Impl(
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderEmail: null == senderEmail
          ? _value.senderEmail
          : senderEmail // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      groceryListId: null == groceryListId
          ? _value.groceryListId
          : groceryListId // ignore: cast_nullable_to_non_nullable
              as String,
      listName: null == listName
          ? _value.listName
          : listName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddRequest$Impl implements AddRequest$ {
  const _$AddRequest$Impl(
      {required this.senderName,
      required this.senderEmail,
      required this.senderId,
      required this.groceryListId,
      required this.listName});

  factory _$AddRequest$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AddRequest$ImplFromJson(json);

  @override
  final String senderName;
  @override
  final String senderEmail;
  @override
  final String senderId;
  @override
  final String groceryListId;
  @override
  final String listName;

  @override
  String toString() {
    return 'AddRequest(senderName: $senderName, senderEmail: $senderEmail, senderId: $senderId, groceryListId: $groceryListId, listName: $listName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRequest$Impl &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderEmail, senderEmail) ||
                other.senderEmail == senderEmail) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.groceryListId, groceryListId) ||
                other.groceryListId == groceryListId) &&
            (identical(other.listName, listName) ||
                other.listName == listName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, senderName, senderEmail, senderId, groceryListId, listName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRequest$ImplCopyWith<_$AddRequest$Impl> get copyWith =>
      __$$AddRequest$ImplCopyWithImpl<_$AddRequest$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddRequest$ImplToJson(
      this,
    );
  }
}

abstract class AddRequest$ implements AddRequest {
  const factory AddRequest$(
      {required final String senderName,
      required final String senderEmail,
      required final String senderId,
      required final String groceryListId,
      required final String listName}) = _$AddRequest$Impl;

  factory AddRequest$.fromJson(Map<String, dynamic> json) =
      _$AddRequest$Impl.fromJson;

  @override
  String get senderName;
  @override
  String get senderEmail;
  @override
  String get senderId;
  @override
  String get groceryListId;
  @override
  String get listName;
  @override
  @JsonKey(ignore: true)
  _$$AddRequest$ImplCopyWith<_$AddRequest$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

PromptData _$PromptDataFromJson(Map<String, dynamic> json) {
  return PromptData$.fromJson(json);
}

/// @nodoc
mixin _$PromptData {
  String get textInput => throw _privateConstructorUsedError;
  Set<BasicIngredientsFilter> get basicIngredients =>
      throw _privateConstructorUsedError;
  Set<CuisineFilter> get cuisines => throw _privateConstructorUsedError;
  Set<DietaryRestrictionsFilter> get dietaryRestrictions =>
      throw _privateConstructorUsedError;
  List<String> get additionalTextInput => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromptDataCopyWith<PromptData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptDataCopyWith<$Res> {
  factory $PromptDataCopyWith(
          PromptData value, $Res Function(PromptData) then) =
      _$PromptDataCopyWithImpl<$Res, PromptData>;
  @useResult
  $Res call(
      {String textInput,
      Set<BasicIngredientsFilter> basicIngredients,
      Set<CuisineFilter> cuisines,
      Set<DietaryRestrictionsFilter> dietaryRestrictions,
      List<String> additionalTextInput});
}

/// @nodoc
class _$PromptDataCopyWithImpl<$Res, $Val extends PromptData>
    implements $PromptDataCopyWith<$Res> {
  _$PromptDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textInput = null,
    Object? basicIngredients = null,
    Object? cuisines = null,
    Object? dietaryRestrictions = null,
    Object? additionalTextInput = null,
  }) {
    return _then(_value.copyWith(
      textInput: null == textInput
          ? _value.textInput
          : textInput // ignore: cast_nullable_to_non_nullable
              as String,
      basicIngredients: null == basicIngredients
          ? _value.basicIngredients
          : basicIngredients // ignore: cast_nullable_to_non_nullable
              as Set<BasicIngredientsFilter>,
      cuisines: null == cuisines
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as Set<CuisineFilter>,
      dietaryRestrictions: null == dietaryRestrictions
          ? _value.dietaryRestrictions
          : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
              as Set<DietaryRestrictionsFilter>,
      additionalTextInput: null == additionalTextInput
          ? _value.additionalTextInput
          : additionalTextInput // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromptData$ImplCopyWith<$Res>
    implements $PromptDataCopyWith<$Res> {
  factory _$$PromptData$ImplCopyWith(
          _$PromptData$Impl value, $Res Function(_$PromptData$Impl) then) =
      __$$PromptData$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String textInput,
      Set<BasicIngredientsFilter> basicIngredients,
      Set<CuisineFilter> cuisines,
      Set<DietaryRestrictionsFilter> dietaryRestrictions,
      List<String> additionalTextInput});
}

/// @nodoc
class __$$PromptData$ImplCopyWithImpl<$Res>
    extends _$PromptDataCopyWithImpl<$Res, _$PromptData$Impl>
    implements _$$PromptData$ImplCopyWith<$Res> {
  __$$PromptData$ImplCopyWithImpl(
      _$PromptData$Impl _value, $Res Function(_$PromptData$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textInput = null,
    Object? basicIngredients = null,
    Object? cuisines = null,
    Object? dietaryRestrictions = null,
    Object? additionalTextInput = null,
  }) {
    return _then(_$PromptData$Impl(
      textInput: null == textInput
          ? _value.textInput
          : textInput // ignore: cast_nullable_to_non_nullable
              as String,
      basicIngredients: null == basicIngredients
          ? _value._basicIngredients
          : basicIngredients // ignore: cast_nullable_to_non_nullable
              as Set<BasicIngredientsFilter>,
      cuisines: null == cuisines
          ? _value._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as Set<CuisineFilter>,
      dietaryRestrictions: null == dietaryRestrictions
          ? _value._dietaryRestrictions
          : dietaryRestrictions // ignore: cast_nullable_to_non_nullable
              as Set<DietaryRestrictionsFilter>,
      additionalTextInput: null == additionalTextInput
          ? _value._additionalTextInput
          : additionalTextInput // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromptData$Impl implements PromptData$ {
  const _$PromptData$Impl(
      {required this.textInput,
      final Set<BasicIngredientsFilter> basicIngredients =
          const <BasicIngredientsFilter>{},
      final Set<CuisineFilter> cuisines = const <CuisineFilter>{},
      final Set<DietaryRestrictionsFilter> dietaryRestrictions =
          const <DietaryRestrictionsFilter>{},
      final List<String> additionalTextInput = const <String>[]})
      : _basicIngredients = basicIngredients,
        _cuisines = cuisines,
        _dietaryRestrictions = dietaryRestrictions,
        _additionalTextInput = additionalTextInput;

  factory _$PromptData$Impl.fromJson(Map<String, dynamic> json) =>
      _$$PromptData$ImplFromJson(json);

  @override
  final String textInput;
  final Set<BasicIngredientsFilter> _basicIngredients;
  @override
  @JsonKey()
  Set<BasicIngredientsFilter> get basicIngredients {
    if (_basicIngredients is EqualUnmodifiableSetView) return _basicIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_basicIngredients);
  }

  final Set<CuisineFilter> _cuisines;
  @override
  @JsonKey()
  Set<CuisineFilter> get cuisines {
    if (_cuisines is EqualUnmodifiableSetView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_cuisines);
  }

  final Set<DietaryRestrictionsFilter> _dietaryRestrictions;
  @override
  @JsonKey()
  Set<DietaryRestrictionsFilter> get dietaryRestrictions {
    if (_dietaryRestrictions is EqualUnmodifiableSetView)
      return _dietaryRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_dietaryRestrictions);
  }

  final List<String> _additionalTextInput;
  @override
  @JsonKey()
  List<String> get additionalTextInput {
    if (_additionalTextInput is EqualUnmodifiableListView)
      return _additionalTextInput;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalTextInput);
  }

  @override
  String toString() {
    return 'PromptData(textInput: $textInput, basicIngredients: $basicIngredients, cuisines: $cuisines, dietaryRestrictions: $dietaryRestrictions, additionalTextInput: $additionalTextInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptData$Impl &&
            (identical(other.textInput, textInput) ||
                other.textInput == textInput) &&
            const DeepCollectionEquality()
                .equals(other._basicIngredients, _basicIngredients) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            const DeepCollectionEquality()
                .equals(other._dietaryRestrictions, _dietaryRestrictions) &&
            const DeepCollectionEquality()
                .equals(other._additionalTextInput, _additionalTextInput));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      textInput,
      const DeepCollectionEquality().hash(_basicIngredients),
      const DeepCollectionEquality().hash(_cuisines),
      const DeepCollectionEquality().hash(_dietaryRestrictions),
      const DeepCollectionEquality().hash(_additionalTextInput));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptData$ImplCopyWith<_$PromptData$Impl> get copyWith =>
      __$$PromptData$ImplCopyWithImpl<_$PromptData$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromptData$ImplToJson(
      this,
    );
  }
}

abstract class PromptData$ implements PromptData {
  const factory PromptData$(
      {required final String textInput,
      final Set<BasicIngredientsFilter> basicIngredients,
      final Set<CuisineFilter> cuisines,
      final Set<DietaryRestrictionsFilter> dietaryRestrictions,
      final List<String> additionalTextInput}) = _$PromptData$Impl;

  factory PromptData$.fromJson(Map<String, dynamic> json) =
      _$PromptData$Impl.fromJson;

  @override
  String get textInput;
  @override
  Set<BasicIngredientsFilter> get basicIngredients;
  @override
  Set<CuisineFilter> get cuisines;
  @override
  Set<DietaryRestrictionsFilter> get dietaryRestrictions;
  @override
  List<String> get additionalTextInput;
  @override
  @JsonKey(ignore: true)
  _$$PromptData$ImplCopyWith<_$PromptData$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
