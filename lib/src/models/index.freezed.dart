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
  bool get isLoading => throw _privateConstructorUsedError;
  List<Auchan> get products => throw _privateConstructorUsedError;
  List<Product> get productsList => throw _privateConstructorUsedError;
  String? get selectedListTitle => throw _privateConstructorUsedError;

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
      bool isLoading,
      List<Auchan> products,
      List<Product> productsList,
      String? selectedListTitle});

  $AppUserCopyWith<$Res>? get user;
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
    Object? isLoading = null,
    Object? products = null,
    Object? productsList = null,
    Object? selectedListTitle = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Auchan>,
      productsList: null == productsList
          ? _value.productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      selectedListTitle: freezed == selectedListTitle
          ? _value.selectedListTitle
          : selectedListTitle // ignore: cast_nullable_to_non_nullable
              as String?,
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
      bool isLoading,
      List<Auchan> products,
      List<Product> productsList,
      String? selectedListTitle});

  @override
  $AppUserCopyWith<$Res>? get user;
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
    Object? isLoading = null,
    Object? products = null,
    Object? productsList = null,
    Object? selectedListTitle = freezed,
  }) {
    return _then(_$AppState$Impl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Auchan>,
      productsList: null == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      selectedListTitle: freezed == selectedListTitle
          ? _value.selectedListTitle
          : selectedListTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$Impl implements AppState$ {
  const _$AppState$Impl(
      {this.user,
      this.isLoading = true,
      final List<Auchan> products = const <Auchan>[],
      final List<Product> productsList = const <Product>[],
      this.selectedListTitle})
      : _products = products,
        _productsList = productsList;

  factory _$AppState$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AppState$ImplFromJson(json);

  @override
  final AppUser? user;
  @override
  @JsonKey()
  final bool isLoading;
  final List<Auchan> _products;
  @override
  @JsonKey()
  List<Auchan> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Product> _productsList;
  @override
  @JsonKey()
  List<Product> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  @override
  final String? selectedListTitle;

  @override
  String toString() {
    return 'AppState(user: $user, isLoading: $isLoading, products: $products, productsList: $productsList, selectedListTitle: $selectedListTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$Impl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList) &&
            (identical(other.selectedListTitle, selectedListTitle) ||
                other.selectedListTitle == selectedListTitle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      isLoading,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_productsList),
      selectedListTitle);

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
      final bool isLoading,
      final List<Auchan> products,
      final List<Product> productsList,
      final String? selectedListTitle}) = _$AppState$Impl;

  factory AppState$.fromJson(Map<String, dynamic> json) =
      _$AppState$Impl.fromJson;

  @override
  AppUser? get user;
  @override
  bool get isLoading;
  @override
  List<Auchan> get products;
  @override
  List<Product> get productsList;
  @override
  String? get selectedListTitle;
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
  Set<GroceryList> get groceryLists => throw _privateConstructorUsedError;

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
      Set<GroceryList> groceryLists});
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
    Object? groceryLists = null,
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
      groceryLists: null == groceryLists
          ? _value.groceryLists
          : groceryLists // ignore: cast_nullable_to_non_nullable
              as Set<GroceryList>,
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
      Set<GroceryList> groceryLists});
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
    Object? groceryLists = null,
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
      groceryLists: null == groceryLists
          ? _value._groceryLists
          : groceryLists // ignore: cast_nullable_to_non_nullable
              as Set<GroceryList>,
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
      final Set<GroceryList> groceryLists = const <GroceryList>{}})
      : _groceryLists = groceryLists;

  factory _$AppUser$Impl.fromJson(Map<String, dynamic> json) =>
      _$$AppUser$ImplFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String username;
  final Set<GroceryList> _groceryLists;
  @override
  @JsonKey()
  Set<GroceryList> get groceryLists {
    if (_groceryLists is EqualUnmodifiableSetView) return _groceryLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_groceryLists);
  }

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, username: $username, groceryLists: $groceryLists)';
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
                .equals(other._groceryLists, _groceryLists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, username,
      const DeepCollectionEquality().hash(_groceryLists));

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
      final Set<GroceryList> groceryLists}) = _$AppUser$Impl;

  factory AppUser$.fromJson(Map<String, dynamic> json) =
      _$AppUser$Impl.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get username;
  @override
  Set<GroceryList> get groceryLists;
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
  String get uid => throw _privateConstructorUsedError;
  String get groceryListTitle => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({String uid, String groceryListTitle, String name, double price});
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
    Object? uid = null,
    Object? groceryListTitle = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      groceryListTitle: null == groceryListTitle
          ? _value.groceryListTitle
          : groceryListTitle // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
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
  $Res call({String uid, String groceryListTitle, String name, double price});
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
    Object? uid = null,
    Object? groceryListTitle = null,
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$Product$Impl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      groceryListTitle: null == groceryListTitle
          ? _value.groceryListTitle
          : groceryListTitle // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$Product$Impl implements Product$ {
  const _$Product$Impl(
      {required this.uid,
      required this.groceryListTitle,
      required this.name,
      required this.price});

  factory _$Product$Impl.fromJson(Map<String, dynamic> json) =>
      _$$Product$ImplFromJson(json);

  @override
  final String uid;
  @override
  final String groceryListTitle;
  @override
  final String name;
  @override
  final double price;

  @override
  String toString() {
    return 'Product(uid: $uid, groceryListTitle: $groceryListTitle, name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Product$Impl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.groceryListTitle, groceryListTitle) ||
                other.groceryListTitle == groceryListTitle) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uid, groceryListTitle, name, price);

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
      {required final String uid,
      required final String groceryListTitle,
      required final String name,
      required final double price}) = _$Product$Impl;

  factory Product$.fromJson(Map<String, dynamic> json) =
      _$Product$Impl.fromJson;

  @override
  String get uid;
  @override
  String get groceryListTitle;
  @override
  String get name;
  @override
  double get price;
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
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

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
  $Res call({String uid, String title, String description});
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
    Object? uid = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String uid, String title, String description});
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
    Object? uid = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$GroceryList$Impl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroceryList$Impl implements GroceryList$ {
  const _$GroceryList$Impl(
      {required this.uid, required this.title, this.description = ''});

  factory _$GroceryList$Impl.fromJson(Map<String, dynamic> json) =>
      _$$GroceryList$ImplFromJson(json);

  @override
  final String uid;
  @override
  final String title;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'GroceryList(uid: $uid, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroceryList$Impl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, title, description);

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
      {required final String uid,
      required final String title,
      final String description}) = _$GroceryList$Impl;

  factory GroceryList$.fromJson(Map<String, dynamic> json) =
      _$GroceryList$Impl.fromJson;

  @override
  String get uid;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$GroceryList$ImplCopyWith<_$GroceryList$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
