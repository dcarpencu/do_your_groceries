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

/// @nodoc
mixin _$CreateUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String username,
            ActionResult onResult)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserCopyWith<$Res> {
  factory $CreateUserCopyWith(
          CreateUser value, $Res Function(CreateUser) then) =
      _$CreateUserCopyWithImpl<$Res, CreateUser>;
}

/// @nodoc
class _$CreateUserCopyWithImpl<$Res, $Val extends CreateUser>
    implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateUserStartImplCopyWith<$Res> {
  factory _$$CreateUserStartImplCopyWith(_$CreateUserStartImpl value,
          $Res Function(_$CreateUserStartImpl) then) =
      __$$CreateUserStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email, String password, String username, ActionResult onResult});
}

/// @nodoc
class __$$CreateUserStartImplCopyWithImpl<$Res>
    extends _$CreateUserCopyWithImpl<$Res, _$CreateUserStartImpl>
    implements _$$CreateUserStartImplCopyWith<$Res> {
  __$$CreateUserStartImplCopyWithImpl(
      _$CreateUserStartImpl _value, $Res Function(_$CreateUserStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
    Object? onResult = null,
  }) {
    return _then(_$CreateUserStartImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      onResult: null == onResult
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$CreateUserStartImpl implements CreateUserStart {
  const _$CreateUserStartImpl(
      {required this.email,
      required this.password,
      required this.username,
      required this.onResult});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;
  @override
  final ActionResult onResult;

  @override
  String toString() {
    return 'CreateUser(email: $email, password: $password, username: $username, onResult: $onResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserStartImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.onResult, onResult) ||
                other.onResult == onResult));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, username, onResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserStartImplCopyWith<_$CreateUserStartImpl> get copyWith =>
      __$$CreateUserStartImplCopyWithImpl<_$CreateUserStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, username, onResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String username,
            ActionResult onResult)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, username, onResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, username, onResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateUserStart implements CreateUser {
  const factory CreateUserStart(
      {required final String email,
      required final String password,
      required final String username,
      required final ActionResult onResult}) = _$CreateUserStartImpl;

  String get email;
  String get password;
  String get username;
  ActionResult get onResult;
  @JsonKey(ignore: true)
  _$$CreateUserStartImplCopyWith<_$CreateUserStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserSuccessfulImplCopyWith<$Res> {
  factory _$$CreateUserSuccessfulImplCopyWith(_$CreateUserSuccessfulImpl value,
          $Res Function(_$CreateUserSuccessfulImpl) then) =
      __$$CreateUserSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$CreateUserSuccessfulImplCopyWithImpl<$Res>
    extends _$CreateUserCopyWithImpl<$Res, _$CreateUserSuccessfulImpl>
    implements _$$CreateUserSuccessfulImplCopyWith<$Res> {
  __$$CreateUserSuccessfulImplCopyWithImpl(_$CreateUserSuccessfulImpl _value,
      $Res Function(_$CreateUserSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$CreateUserSuccessfulImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$CreateUserSuccessfulImpl implements CreateUserSuccessful {
  const _$CreateUserSuccessfulImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'CreateUser.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserSuccessfulImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserSuccessfulImplCopyWith<_$CreateUserSuccessfulImpl>
      get copyWith =>
          __$$CreateUserSuccessfulImplCopyWithImpl<_$CreateUserSuccessfulImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String username,
            ActionResult onResult)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateUserSuccessful implements CreateUser, UserAction {
  const factory CreateUserSuccessful(final AppUser user) =
      _$CreateUserSuccessfulImpl;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$CreateUserSuccessfulImplCopyWith<_$CreateUserSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserErrorImplCopyWith<$Res> {
  factory _$$CreateUserErrorImplCopyWith(_$CreateUserErrorImpl value,
          $Res Function(_$CreateUserErrorImpl) then) =
      __$$CreateUserErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateUserErrorImplCopyWithImpl<$Res>
    extends _$CreateUserCopyWithImpl<$Res, _$CreateUserErrorImpl>
    implements _$$CreateUserErrorImplCopyWith<$Res> {
  __$$CreateUserErrorImplCopyWithImpl(
      _$CreateUserErrorImpl _value, $Res Function(_$CreateUserErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$CreateUserErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$CreateUserErrorImpl implements CreateUserError {
  const _$CreateUserErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserErrorImplCopyWith<_$CreateUserErrorImpl> get copyWith =>
      __$$CreateUserErrorImplCopyWithImpl<_$CreateUserErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String username,
            ActionResult onResult)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username,
            ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateUserStart value) $default, {
    required TResult Function(CreateUserSuccessful value) successful,
    required TResult Function(CreateUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateUserStart value)? $default, {
    TResult? Function(CreateUserSuccessful value)? successful,
    TResult? Function(CreateUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateUserStart value)? $default, {
    TResult Function(CreateUserSuccessful value)? successful,
    TResult Function(CreateUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateUserError implements CreateUser, ErrorAction {
  const factory CreateUserError(
      final Object error, final StackTrace stackTrace) = _$CreateUserErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreateUserErrorImplCopyWith<_$CreateUserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetCurrentUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCurrentUserStart value)? $default, {
    TResult? Function(GetCurrentUserSuccessful value)? successful,
    TResult? Function(GetCurrentUserError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentUserCopyWith<$Res> {
  factory $GetCurrentUserCopyWith(
          GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res, GetCurrentUser>;
}

/// @nodoc
class _$GetCurrentUserCopyWithImpl<$Res, $Val extends GetCurrentUser>
    implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrentUserStartImplCopyWith<$Res> {
  factory _$$GetCurrentUserStartImplCopyWith(_$GetCurrentUserStartImpl value,
          $Res Function(_$GetCurrentUserStartImpl) then) =
      __$$GetCurrentUserStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserStartImplCopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res, _$GetCurrentUserStartImpl>
    implements _$$GetCurrentUserStartImplCopyWith<$Res> {
  __$$GetCurrentUserStartImplCopyWithImpl(_$GetCurrentUserStartImpl _value,
      $Res Function(_$GetCurrentUserStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentUserStartImpl implements GetCurrentUserStart {
  const _$GetCurrentUserStartImpl();

  @override
  String toString() {
    return 'GetCurrentUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentUserStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCurrentUserStart value)? $default, {
    TResult? Function(GetCurrentUserSuccessful value)? successful,
    TResult? Function(GetCurrentUserError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserStart implements GetCurrentUser {
  const factory GetCurrentUserStart() = _$GetCurrentUserStartImpl;
}

/// @nodoc
abstract class _$$GetCurrentUserSuccessfulImplCopyWith<$Res> {
  factory _$$GetCurrentUserSuccessfulImplCopyWith(
          _$GetCurrentUserSuccessfulImpl value,
          $Res Function(_$GetCurrentUserSuccessfulImpl) then) =
      __$$GetCurrentUserSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser? user});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$GetCurrentUserSuccessfulImplCopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res, _$GetCurrentUserSuccessfulImpl>
    implements _$$GetCurrentUserSuccessfulImplCopyWith<$Res> {
  __$$GetCurrentUserSuccessfulImplCopyWithImpl(
      _$GetCurrentUserSuccessfulImpl _value,
      $Res Function(_$GetCurrentUserSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$GetCurrentUserSuccessfulImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$GetCurrentUserSuccessfulImpl implements GetCurrentUserSuccessful {
  const _$GetCurrentUserSuccessfulImpl(this.user);

  @override
  final AppUser? user;

  @override
  String toString() {
    return 'GetCurrentUser.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentUserSuccessfulImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrentUserSuccessfulImplCopyWith<_$GetCurrentUserSuccessfulImpl>
      get copyWith => __$$GetCurrentUserSuccessfulImplCopyWithImpl<
          _$GetCurrentUserSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCurrentUserStart value)? $default, {
    TResult? Function(GetCurrentUserSuccessful value)? successful,
    TResult? Function(GetCurrentUserError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserSuccessful implements GetCurrentUser, UserAction {
  const factory GetCurrentUserSuccessful(final AppUser? user) =
      _$GetCurrentUserSuccessfulImpl;

  AppUser? get user;
  @JsonKey(ignore: true)
  _$$GetCurrentUserSuccessfulImplCopyWith<_$GetCurrentUserSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCurrentUserErrorImplCopyWith<$Res> {
  factory _$$GetCurrentUserErrorImplCopyWith(_$GetCurrentUserErrorImpl value,
          $Res Function(_$GetCurrentUserErrorImpl) then) =
      __$$GetCurrentUserErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetCurrentUserErrorImplCopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res, _$GetCurrentUserErrorImpl>
    implements _$$GetCurrentUserErrorImplCopyWith<$Res> {
  __$$GetCurrentUserErrorImplCopyWithImpl(_$GetCurrentUserErrorImpl _value,
      $Res Function(_$GetCurrentUserErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetCurrentUserErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetCurrentUserErrorImpl implements GetCurrentUserError {
  const _$GetCurrentUserErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetCurrentUser.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentUserErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrentUserErrorImplCopyWith<_$GetCurrentUserErrorImpl> get copyWith =>
      __$$GetCurrentUserErrorImplCopyWithImpl<_$GetCurrentUserErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(AppUser? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(AppUser? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(AppUser? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value) $default, {
    required TResult Function(GetCurrentUserSuccessful value) successful,
    required TResult Function(GetCurrentUserError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCurrentUserStart value)? $default, {
    TResult? Function(GetCurrentUserSuccessful value)? successful,
    TResult? Function(GetCurrentUserError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentUserStart value)? $default, {
    TResult Function(GetCurrentUserSuccessful value)? successful,
    TResult Function(GetCurrentUserError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserError implements GetCurrentUser, ErrorAction {
  const factory GetCurrentUserError(
          final Object error, final StackTrace stackTrace) =
      _$GetCurrentUserErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetCurrentUserErrorImplCopyWith<_$GetCurrentUserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Login {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res, Login>;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStartImplCopyWith<$Res> {
  factory _$$LoginStartImplCopyWith(
          _$LoginStartImpl value, $Res Function(_$LoginStartImpl) then) =
      __$$LoginStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, ActionResult onResult});
}

/// @nodoc
class __$$LoginStartImplCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginStartImpl>
    implements _$$LoginStartImplCopyWith<$Res> {
  __$$LoginStartImplCopyWithImpl(
      _$LoginStartImpl _value, $Res Function(_$LoginStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? onResult = null,
  }) {
    return _then(_$LoginStartImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onResult: null == onResult
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$LoginStartImpl implements LoginStart {
  const _$LoginStartImpl(
      {required this.email, required this.password, required this.onResult});

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResult onResult;

  @override
  String toString() {
    return 'Login(email: $email, password: $password, onResult: $onResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStartImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.onResult, onResult) ||
                other.onResult == onResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, onResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStartImplCopyWith<_$LoginStartImpl> get copyWith =>
      __$$LoginStartImplCopyWithImpl<_$LoginStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, onResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, onResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, onResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LoginStart implements Login {
  const factory LoginStart(
      {required final String email,
      required final String password,
      required final ActionResult onResult}) = _$LoginStartImpl;

  String get email;
  String get password;
  ActionResult get onResult;
  @JsonKey(ignore: true)
  _$$LoginStartImplCopyWith<_$LoginStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessfulImplCopyWith<$Res> {
  factory _$$LoginSuccessfulImplCopyWith(_$LoginSuccessfulImpl value,
          $Res Function(_$LoginSuccessfulImpl) then) =
      __$$LoginSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginSuccessfulImplCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginSuccessfulImpl>
    implements _$$LoginSuccessfulImplCopyWith<$Res> {
  __$$LoginSuccessfulImplCopyWithImpl(
      _$LoginSuccessfulImpl _value, $Res Function(_$LoginSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoginSuccessfulImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoginSuccessfulImpl implements LoginSuccessful {
  const _$LoginSuccessfulImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'Login.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessfulImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessfulImplCopyWith<_$LoginSuccessfulImpl> get copyWith =>
      __$$LoginSuccessfulImplCopyWithImpl<_$LoginSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LoginSuccessful implements Login, UserAction {
  const factory LoginSuccessful(final AppUser user) = _$LoginSuccessfulImpl;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$LoginSuccessfulImplCopyWith<_$LoginSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$LoginCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LoginErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl implements LoginError {
  const _$LoginErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Login.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)
        $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult onResult)?
        $default, {
    TResult Function(AppUser user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LoginStart value) $default, {
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LoginStart value)? $default, {
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LoginStart value)? $default, {
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements Login, ErrorAction {
  const factory LoginError(final Object error, final StackTrace stackTrace) =
      _$LoginErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Logout {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res, Logout>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res, $Val extends Logout>
    implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogoutStartImplCopyWith<$Res> {
  factory _$$LogoutStartImplCopyWith(
          _$LogoutStartImpl value, $Res Function(_$LogoutStartImpl) then) =
      __$$LogoutStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutStartImplCopyWithImpl<$Res>
    extends _$LogoutCopyWithImpl<$Res, _$LogoutStartImpl>
    implements _$$LogoutStartImplCopyWith<$Res> {
  __$$LogoutStartImplCopyWithImpl(
      _$LogoutStartImpl _value, $Res Function(_$LogoutStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutStartImpl implements LogoutStart {
  const _$LogoutStartImpl();

  @override
  String toString() {
    return 'Logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class LogoutStart implements Logout {
  const factory LogoutStart() = _$LogoutStartImpl;
}

/// @nodoc
abstract class _$$LogoutSuccessfulImplCopyWith<$Res> {
  factory _$$LogoutSuccessfulImplCopyWith(_$LogoutSuccessfulImpl value,
          $Res Function(_$LogoutSuccessfulImpl) then) =
      __$$LogoutSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutSuccessfulImplCopyWithImpl<$Res>
    extends _$LogoutCopyWithImpl<$Res, _$LogoutSuccessfulImpl>
    implements _$$LogoutSuccessfulImplCopyWith<$Res> {
  __$$LogoutSuccessfulImplCopyWithImpl(_$LogoutSuccessfulImpl _value,
      $Res Function(_$LogoutSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutSuccessfulImpl implements LogoutSuccessful {
  const _$LogoutSuccessfulImpl();

  @override
  String toString() {
    return 'Logout.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class LogoutSuccessful implements Logout {
  const factory LogoutSuccessful() = _$LogoutSuccessfulImpl;
}

/// @nodoc
abstract class _$$LogoutErrorImplCopyWith<$Res> {
  factory _$$LogoutErrorImplCopyWith(
          _$LogoutErrorImpl value, $Res Function(_$LogoutErrorImpl) then) =
      __$$LogoutErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$LogoutErrorImplCopyWithImpl<$Res>
    extends _$LogoutCopyWithImpl<$Res, _$LogoutErrorImpl>
    implements _$$LogoutErrorImplCopyWith<$Res> {
  __$$LogoutErrorImplCopyWithImpl(
      _$LogoutErrorImpl _value, $Res Function(_$LogoutErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$LogoutErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$LogoutErrorImpl implements LogoutError {
  const _$LogoutErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'Logout.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutErrorImplCopyWith<_$LogoutErrorImpl> get copyWith =>
      __$$LogoutErrorImplCopyWithImpl<_$LogoutErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(LogoutStart value) $default, {
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(LogoutStart value)? $default, {
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(LogoutStart value)? $default, {
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogoutError implements Logout, ErrorAction {
  const factory LogoutError(final Object error, final StackTrace stackTrace) =
      _$LogoutErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$LogoutErrorImplCopyWith<_$LogoutErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetProducts {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult onResult) $default, {
    required TResult Function(List<Auchan> products) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult onResult)? $default, {
    TResult? Function(List<Auchan> products)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult onResult)? $default, {
    TResult Function(List<Auchan> products)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetProductsStart value) $default, {
    required TResult Function(GetProductsSuccessful value) successful,
    required TResult Function(GetProductsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetProductsStart value)? $default, {
    TResult? Function(GetProductsSuccessful value)? successful,
    TResult? Function(GetProductsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetProductsStart value)? $default, {
    TResult Function(GetProductsSuccessful value)? successful,
    TResult Function(GetProductsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsCopyWith<$Res> {
  factory $GetProductsCopyWith(
          GetProducts value, $Res Function(GetProducts) then) =
      _$GetProductsCopyWithImpl<$Res, GetProducts>;
}

/// @nodoc
class _$GetProductsCopyWithImpl<$Res, $Val extends GetProducts>
    implements $GetProductsCopyWith<$Res> {
  _$GetProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProductsStartImplCopyWith<$Res> {
  factory _$$GetProductsStartImplCopyWith(_$GetProductsStartImpl value,
          $Res Function(_$GetProductsStartImpl) then) =
      __$$GetProductsStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionResult onResult});
}

/// @nodoc
class __$$GetProductsStartImplCopyWithImpl<$Res>
    extends _$GetProductsCopyWithImpl<$Res, _$GetProductsStartImpl>
    implements _$$GetProductsStartImplCopyWith<$Res> {
  __$$GetProductsStartImplCopyWithImpl(_$GetProductsStartImpl _value,
      $Res Function(_$GetProductsStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onResult = null,
  }) {
    return _then(_$GetProductsStartImpl(
      null == onResult
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$GetProductsStartImpl implements GetProductsStart {
  const _$GetProductsStartImpl(this.onResult);

  @override
  final ActionResult onResult;

  @override
  String toString() {
    return 'GetProducts(onResult: $onResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsStartImpl &&
            (identical(other.onResult, onResult) ||
                other.onResult == onResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsStartImplCopyWith<_$GetProductsStartImpl> get copyWith =>
      __$$GetProductsStartImplCopyWithImpl<_$GetProductsStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult onResult) $default, {
    required TResult Function(List<Auchan> products) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(onResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult onResult)? $default, {
    TResult? Function(List<Auchan> products)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(onResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult onResult)? $default, {
    TResult Function(List<Auchan> products)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(onResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetProductsStart value) $default, {
    required TResult Function(GetProductsSuccessful value) successful,
    required TResult Function(GetProductsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetProductsStart value)? $default, {
    TResult? Function(GetProductsSuccessful value)? successful,
    TResult? Function(GetProductsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetProductsStart value)? $default, {
    TResult Function(GetProductsSuccessful value)? successful,
    TResult Function(GetProductsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetProductsStart implements GetProducts {
  const factory GetProductsStart(final ActionResult onResult) =
      _$GetProductsStartImpl;

  ActionResult get onResult;
  @JsonKey(ignore: true)
  _$$GetProductsStartImplCopyWith<_$GetProductsStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsSuccessfulImplCopyWith<$Res> {
  factory _$$GetProductsSuccessfulImplCopyWith(
          _$GetProductsSuccessfulImpl value,
          $Res Function(_$GetProductsSuccessfulImpl) then) =
      __$$GetProductsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Auchan> products});
}

/// @nodoc
class __$$GetProductsSuccessfulImplCopyWithImpl<$Res>
    extends _$GetProductsCopyWithImpl<$Res, _$GetProductsSuccessfulImpl>
    implements _$$GetProductsSuccessfulImplCopyWith<$Res> {
  __$$GetProductsSuccessfulImplCopyWithImpl(_$GetProductsSuccessfulImpl _value,
      $Res Function(_$GetProductsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$GetProductsSuccessfulImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Auchan>,
    ));
  }
}

/// @nodoc

class _$GetProductsSuccessfulImpl implements GetProductsSuccessful {
  const _$GetProductsSuccessfulImpl(final List<Auchan> products)
      : _products = products;

  final List<Auchan> _products;
  @override
  List<Auchan> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'GetProducts.successful(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsSuccessfulImplCopyWith<_$GetProductsSuccessfulImpl>
      get copyWith => __$$GetProductsSuccessfulImplCopyWithImpl<
          _$GetProductsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult onResult) $default, {
    required TResult Function(List<Auchan> products) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult onResult)? $default, {
    TResult? Function(List<Auchan> products)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult onResult)? $default, {
    TResult Function(List<Auchan> products)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetProductsStart value) $default, {
    required TResult Function(GetProductsSuccessful value) successful,
    required TResult Function(GetProductsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetProductsStart value)? $default, {
    TResult? Function(GetProductsSuccessful value)? successful,
    TResult? Function(GetProductsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetProductsStart value)? $default, {
    TResult Function(GetProductsSuccessful value)? successful,
    TResult Function(GetProductsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetProductsSuccessful implements GetProducts {
  const factory GetProductsSuccessful(final List<Auchan> products) =
      _$GetProductsSuccessfulImpl;

  List<Auchan> get products;
  @JsonKey(ignore: true)
  _$$GetProductsSuccessfulImplCopyWith<_$GetProductsSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsErrorImplCopyWith<$Res> {
  factory _$$GetProductsErrorImplCopyWith(_$GetProductsErrorImpl value,
          $Res Function(_$GetProductsErrorImpl) then) =
      __$$GetProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetProductsErrorImplCopyWithImpl<$Res>
    extends _$GetProductsCopyWithImpl<$Res, _$GetProductsErrorImpl>
    implements _$$GetProductsErrorImplCopyWith<$Res> {
  __$$GetProductsErrorImplCopyWithImpl(_$GetProductsErrorImpl _value,
      $Res Function(_$GetProductsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetProductsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetProductsErrorImpl implements GetProductsError {
  const _$GetProductsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetProducts.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsErrorImplCopyWith<_$GetProductsErrorImpl> get copyWith =>
      __$$GetProductsErrorImplCopyWithImpl<_$GetProductsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult onResult) $default, {
    required TResult Function(List<Auchan> products) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult onResult)? $default, {
    TResult? Function(List<Auchan> products)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult onResult)? $default, {
    TResult Function(List<Auchan> products)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetProductsStart value) $default, {
    required TResult Function(GetProductsSuccessful value) successful,
    required TResult Function(GetProductsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetProductsStart value)? $default, {
    TResult? Function(GetProductsSuccessful value)? successful,
    TResult? Function(GetProductsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetProductsStart value)? $default, {
    TResult Function(GetProductsSuccessful value)? successful,
    TResult Function(GetProductsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetProductsError implements GetProducts, ErrorAction {
  const factory GetProductsError(
      final Object error, final StackTrace stackTrace) = _$GetProductsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetProductsErrorImplCopyWith<_$GetProductsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateUserProductsList {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Product product, bool add) $default, {
    required TResult Function(List<Product>? userProductsList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Product product, bool add)? $default, {
    TResult? Function(List<Product>? userProductsList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Product product, bool add)? $default, {
    TResult Function(List<Product>? userProductsList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateUserProductsListStart value) $default, {
    required TResult Function(UpdateUserProductsListSuccessful value)
        successful,
    required TResult Function(UpdateUserProductsListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateUserProductsListStart value)? $default, {
    TResult? Function(UpdateUserProductsListSuccessful value)? successful,
    TResult? Function(UpdateUserProductsListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateUserProductsListStart value)? $default, {
    TResult Function(UpdateUserProductsListSuccessful value)? successful,
    TResult Function(UpdateUserProductsListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserProductsListCopyWith<$Res> {
  factory $UpdateUserProductsListCopyWith(UpdateUserProductsList value,
          $Res Function(UpdateUserProductsList) then) =
      _$UpdateUserProductsListCopyWithImpl<$Res, UpdateUserProductsList>;
}

/// @nodoc
class _$UpdateUserProductsListCopyWithImpl<$Res,
        $Val extends UpdateUserProductsList>
    implements $UpdateUserProductsListCopyWith<$Res> {
  _$UpdateUserProductsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateUserProductsListStartImplCopyWith<$Res> {
  factory _$$UpdateUserProductsListStartImplCopyWith(
          _$UpdateUserProductsListStartImpl value,
          $Res Function(_$UpdateUserProductsListStartImpl) then) =
      __$$UpdateUserProductsListStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product, bool add});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$UpdateUserProductsListStartImplCopyWithImpl<$Res>
    extends _$UpdateUserProductsListCopyWithImpl<$Res,
        _$UpdateUserProductsListStartImpl>
    implements _$$UpdateUserProductsListStartImplCopyWith<$Res> {
  __$$UpdateUserProductsListStartImplCopyWithImpl(
      _$UpdateUserProductsListStartImpl _value,
      $Res Function(_$UpdateUserProductsListStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? add = null,
  }) {
    return _then(_$UpdateUserProductsListStartImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      add: null == add
          ? _value.add
          : add // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$UpdateUserProductsListStartImpl implements UpdateUserProductsListStart {
  const _$UpdateUserProductsListStartImpl(this.product, {required this.add});

  @override
  final Product product;
  @override
  final bool add;

  @override
  String toString() {
    return 'UpdateUserProductsList(product: $product, add: $add)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProductsListStartImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.add, add) || other.add == add));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, add);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProductsListStartImplCopyWith<_$UpdateUserProductsListStartImpl>
      get copyWith => __$$UpdateUserProductsListStartImplCopyWithImpl<
          _$UpdateUserProductsListStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Product product, bool add) $default, {
    required TResult Function(List<Product>? userProductsList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(product, add);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Product product, bool add)? $default, {
    TResult? Function(List<Product>? userProductsList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(product, add);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Product product, bool add)? $default, {
    TResult Function(List<Product>? userProductsList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(product, add);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateUserProductsListStart value) $default, {
    required TResult Function(UpdateUserProductsListSuccessful value)
        successful,
    required TResult Function(UpdateUserProductsListError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateUserProductsListStart value)? $default, {
    TResult? Function(UpdateUserProductsListSuccessful value)? successful,
    TResult? Function(UpdateUserProductsListError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateUserProductsListStart value)? $default, {
    TResult Function(UpdateUserProductsListSuccessful value)? successful,
    TResult Function(UpdateUserProductsListError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateUserProductsListStart implements UpdateUserProductsList {
  const factory UpdateUserProductsListStart(final Product product,
      {required final bool add}) = _$UpdateUserProductsListStartImpl;

  Product get product;
  bool get add;
  @JsonKey(ignore: true)
  _$$UpdateUserProductsListStartImplCopyWith<_$UpdateUserProductsListStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserProductsListSuccessfulImplCopyWith<$Res> {
  factory _$$UpdateUserProductsListSuccessfulImplCopyWith(
          _$UpdateUserProductsListSuccessfulImpl value,
          $Res Function(_$UpdateUserProductsListSuccessfulImpl) then) =
      __$$UpdateUserProductsListSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product>? userProductsList});
}

/// @nodoc
class __$$UpdateUserProductsListSuccessfulImplCopyWithImpl<$Res>
    extends _$UpdateUserProductsListCopyWithImpl<$Res,
        _$UpdateUserProductsListSuccessfulImpl>
    implements _$$UpdateUserProductsListSuccessfulImplCopyWith<$Res> {
  __$$UpdateUserProductsListSuccessfulImplCopyWithImpl(
      _$UpdateUserProductsListSuccessfulImpl _value,
      $Res Function(_$UpdateUserProductsListSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProductsList = freezed,
  }) {
    return _then(_$UpdateUserProductsListSuccessfulImpl(
      freezed == userProductsList
          ? _value._userProductsList
          : userProductsList // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

class _$UpdateUserProductsListSuccessfulImpl
    implements UpdateUserProductsListSuccessful {
  const _$UpdateUserProductsListSuccessfulImpl(
      final List<Product>? userProductsList)
      : _userProductsList = userProductsList;

  final List<Product>? _userProductsList;
  @override
  List<Product>? get userProductsList {
    final value = _userProductsList;
    if (value == null) return null;
    if (_userProductsList is EqualUnmodifiableListView)
      return _userProductsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateUserProductsList.successful(userProductsList: $userProductsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProductsListSuccessfulImpl &&
            const DeepCollectionEquality()
                .equals(other._userProductsList, _userProductsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userProductsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProductsListSuccessfulImplCopyWith<
          _$UpdateUserProductsListSuccessfulImpl>
      get copyWith => __$$UpdateUserProductsListSuccessfulImplCopyWithImpl<
          _$UpdateUserProductsListSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Product product, bool add) $default, {
    required TResult Function(List<Product>? userProductsList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(userProductsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Product product, bool add)? $default, {
    TResult? Function(List<Product>? userProductsList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(userProductsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Product product, bool add)? $default, {
    TResult Function(List<Product>? userProductsList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(userProductsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateUserProductsListStart value) $default, {
    required TResult Function(UpdateUserProductsListSuccessful value)
        successful,
    required TResult Function(UpdateUserProductsListError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateUserProductsListStart value)? $default, {
    TResult? Function(UpdateUserProductsListSuccessful value)? successful,
    TResult? Function(UpdateUserProductsListError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateUserProductsListStart value)? $default, {
    TResult Function(UpdateUserProductsListSuccessful value)? successful,
    TResult Function(UpdateUserProductsListError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateUserProductsListSuccessful
    implements UpdateUserProductsList {
  const factory UpdateUserProductsListSuccessful(
          final List<Product>? userProductsList) =
      _$UpdateUserProductsListSuccessfulImpl;

  List<Product>? get userProductsList;
  @JsonKey(ignore: true)
  _$$UpdateUserProductsListSuccessfulImplCopyWith<
          _$UpdateUserProductsListSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserProductsListErrorImplCopyWith<$Res> {
  factory _$$UpdateUserProductsListErrorImplCopyWith(
          _$UpdateUserProductsListErrorImpl value,
          $Res Function(_$UpdateUserProductsListErrorImpl) then) =
      __$$UpdateUserProductsListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$UpdateUserProductsListErrorImplCopyWithImpl<$Res>
    extends _$UpdateUserProductsListCopyWithImpl<$Res,
        _$UpdateUserProductsListErrorImpl>
    implements _$$UpdateUserProductsListErrorImplCopyWith<$Res> {
  __$$UpdateUserProductsListErrorImplCopyWithImpl(
      _$UpdateUserProductsListErrorImpl _value,
      $Res Function(_$UpdateUserProductsListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$UpdateUserProductsListErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateUserProductsListErrorImpl implements UpdateUserProductsListError {
  const _$UpdateUserProductsListErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateUserProductsList.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserProductsListErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserProductsListErrorImplCopyWith<_$UpdateUserProductsListErrorImpl>
      get copyWith => __$$UpdateUserProductsListErrorImplCopyWithImpl<
          _$UpdateUserProductsListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Product product, bool add) $default, {
    required TResult Function(List<Product>? userProductsList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Product product, bool add)? $default, {
    TResult? Function(List<Product>? userProductsList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Product product, bool add)? $default, {
    TResult Function(List<Product>? userProductsList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateUserProductsListStart value) $default, {
    required TResult Function(UpdateUserProductsListSuccessful value)
        successful,
    required TResult Function(UpdateUserProductsListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(UpdateUserProductsListStart value)? $default, {
    TResult? Function(UpdateUserProductsListSuccessful value)? successful,
    TResult? Function(UpdateUserProductsListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateUserProductsListStart value)? $default, {
    TResult Function(UpdateUserProductsListSuccessful value)? successful,
    TResult Function(UpdateUserProductsListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateUserProductsListError
    implements UpdateUserProductsList, ErrorAction {
  const factory UpdateUserProductsListError(
          final Object error, final StackTrace stackTrace) =
      _$UpdateUserProductsListErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$UpdateUserProductsListErrorImplCopyWith<_$UpdateUserProductsListErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetGroceryLists {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Set<GroceryList> groceryLists) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Set<GroceryList> groceryLists)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Set<GroceryList> groceryLists)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetGroceryListsStart value) $default, {
    required TResult Function(GetGroceryListsSuccessful value) successful,
    required TResult Function(GetGroceryListsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetGroceryListsStart value)? $default, {
    TResult? Function(GetGroceryListsSuccessful value)? successful,
    TResult? Function(GetGroceryListsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetGroceryListsStart value)? $default, {
    TResult Function(GetGroceryListsSuccessful value)? successful,
    TResult Function(GetGroceryListsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGroceryListsCopyWith<$Res> {
  factory $GetGroceryListsCopyWith(
          GetGroceryLists value, $Res Function(GetGroceryLists) then) =
      _$GetGroceryListsCopyWithImpl<$Res, GetGroceryLists>;
}

/// @nodoc
class _$GetGroceryListsCopyWithImpl<$Res, $Val extends GetGroceryLists>
    implements $GetGroceryListsCopyWith<$Res> {
  _$GetGroceryListsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetGroceryListsStartImplCopyWith<$Res> {
  factory _$$GetGroceryListsStartImplCopyWith(_$GetGroceryListsStartImpl value,
          $Res Function(_$GetGroceryListsStartImpl) then) =
      __$$GetGroceryListsStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetGroceryListsStartImplCopyWithImpl<$Res>
    extends _$GetGroceryListsCopyWithImpl<$Res, _$GetGroceryListsStartImpl>
    implements _$$GetGroceryListsStartImplCopyWith<$Res> {
  __$$GetGroceryListsStartImplCopyWithImpl(_$GetGroceryListsStartImpl _value,
      $Res Function(_$GetGroceryListsStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetGroceryListsStartImpl implements GetGroceryListsStart {
  const _$GetGroceryListsStartImpl();

  @override
  String toString() {
    return 'GetGroceryLists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroceryListsStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Set<GroceryList> groceryLists) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Set<GroceryList> groceryLists)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Set<GroceryList> groceryLists)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetGroceryListsStart value) $default, {
    required TResult Function(GetGroceryListsSuccessful value) successful,
    required TResult Function(GetGroceryListsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetGroceryListsStart value)? $default, {
    TResult? Function(GetGroceryListsSuccessful value)? successful,
    TResult? Function(GetGroceryListsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetGroceryListsStart value)? $default, {
    TResult Function(GetGroceryListsSuccessful value)? successful,
    TResult Function(GetGroceryListsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetGroceryListsStart implements GetGroceryLists {
  const factory GetGroceryListsStart() = _$GetGroceryListsStartImpl;
}

/// @nodoc
abstract class _$$GetGroceryListsSuccessfulImplCopyWith<$Res> {
  factory _$$GetGroceryListsSuccessfulImplCopyWith(
          _$GetGroceryListsSuccessfulImpl value,
          $Res Function(_$GetGroceryListsSuccessfulImpl) then) =
      __$$GetGroceryListsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<GroceryList> groceryLists});
}

/// @nodoc
class __$$GetGroceryListsSuccessfulImplCopyWithImpl<$Res>
    extends _$GetGroceryListsCopyWithImpl<$Res, _$GetGroceryListsSuccessfulImpl>
    implements _$$GetGroceryListsSuccessfulImplCopyWith<$Res> {
  __$$GetGroceryListsSuccessfulImplCopyWithImpl(
      _$GetGroceryListsSuccessfulImpl _value,
      $Res Function(_$GetGroceryListsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryLists = null,
  }) {
    return _then(_$GetGroceryListsSuccessfulImpl(
      null == groceryLists
          ? _value._groceryLists
          : groceryLists // ignore: cast_nullable_to_non_nullable
              as Set<GroceryList>,
    ));
  }
}

/// @nodoc

class _$GetGroceryListsSuccessfulImpl implements GetGroceryListsSuccessful {
  const _$GetGroceryListsSuccessfulImpl(final Set<GroceryList> groceryLists)
      : _groceryLists = groceryLists;

  final Set<GroceryList> _groceryLists;
  @override
  Set<GroceryList> get groceryLists {
    if (_groceryLists is EqualUnmodifiableSetView) return _groceryLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_groceryLists);
  }

  @override
  String toString() {
    return 'GetGroceryLists.successful(groceryLists: $groceryLists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroceryListsSuccessfulImpl &&
            const DeepCollectionEquality()
                .equals(other._groceryLists, _groceryLists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_groceryLists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroceryListsSuccessfulImplCopyWith<_$GetGroceryListsSuccessfulImpl>
      get copyWith => __$$GetGroceryListsSuccessfulImplCopyWithImpl<
          _$GetGroceryListsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Set<GroceryList> groceryLists) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(groceryLists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Set<GroceryList> groceryLists)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(groceryLists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Set<GroceryList> groceryLists)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(groceryLists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetGroceryListsStart value) $default, {
    required TResult Function(GetGroceryListsSuccessful value) successful,
    required TResult Function(GetGroceryListsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetGroceryListsStart value)? $default, {
    TResult? Function(GetGroceryListsSuccessful value)? successful,
    TResult? Function(GetGroceryListsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetGroceryListsStart value)? $default, {
    TResult Function(GetGroceryListsSuccessful value)? successful,
    TResult Function(GetGroceryListsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetGroceryListsSuccessful implements GetGroceryLists {
  const factory GetGroceryListsSuccessful(final Set<GroceryList> groceryLists) =
      _$GetGroceryListsSuccessfulImpl;

  Set<GroceryList> get groceryLists;
  @JsonKey(ignore: true)
  _$$GetGroceryListsSuccessfulImplCopyWith<_$GetGroceryListsSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGroceryListsErrorImplCopyWith<$Res> {
  factory _$$GetGroceryListsErrorImplCopyWith(_$GetGroceryListsErrorImpl value,
          $Res Function(_$GetGroceryListsErrorImpl) then) =
      __$$GetGroceryListsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetGroceryListsErrorImplCopyWithImpl<$Res>
    extends _$GetGroceryListsCopyWithImpl<$Res, _$GetGroceryListsErrorImpl>
    implements _$$GetGroceryListsErrorImplCopyWith<$Res> {
  __$$GetGroceryListsErrorImplCopyWithImpl(_$GetGroceryListsErrorImpl _value,
      $Res Function(_$GetGroceryListsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetGroceryListsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetGroceryListsErrorImpl implements GetGroceryListsError {
  const _$GetGroceryListsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetGroceryLists.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroceryListsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroceryListsErrorImplCopyWith<_$GetGroceryListsErrorImpl>
      get copyWith =>
          __$$GetGroceryListsErrorImplCopyWithImpl<_$GetGroceryListsErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Set<GroceryList> groceryLists) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Set<GroceryList> groceryLists)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Set<GroceryList> groceryLists)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetGroceryListsStart value) $default, {
    required TResult Function(GetGroceryListsSuccessful value) successful,
    required TResult Function(GetGroceryListsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetGroceryListsStart value)? $default, {
    TResult? Function(GetGroceryListsSuccessful value)? successful,
    TResult? Function(GetGroceryListsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetGroceryListsStart value)? $default, {
    TResult Function(GetGroceryListsSuccessful value)? successful,
    TResult Function(GetGroceryListsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetGroceryListsError implements GetGroceryLists, ErrorAction {
  const factory GetGroceryListsError(
          final Object error, final StackTrace stackTrace) =
      _$GetGroceryListsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetGroceryListsErrorImplCopyWith<_$GetGroceryListsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateGroceryList {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)
        $default, {
    required TResult Function(GroceryList groceryList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String title, String description, String selectedIcon)?
        $default, {
    TResult? Function(GroceryList groceryList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)?
        $default, {
    TResult Function(GroceryList groceryList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateGroceryListStart value) $default, {
    required TResult Function(CreateGroceryListSuccessful value) successful,
    required TResult Function(CreateGroceryListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateGroceryListStart value)? $default, {
    TResult? Function(CreateGroceryListSuccessful value)? successful,
    TResult? Function(CreateGroceryListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateGroceryListStart value)? $default, {
    TResult Function(CreateGroceryListSuccessful value)? successful,
    TResult Function(CreateGroceryListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroceryListCopyWith<$Res> {
  factory $CreateGroceryListCopyWith(
          CreateGroceryList value, $Res Function(CreateGroceryList) then) =
      _$CreateGroceryListCopyWithImpl<$Res, CreateGroceryList>;
}

/// @nodoc
class _$CreateGroceryListCopyWithImpl<$Res, $Val extends CreateGroceryList>
    implements $CreateGroceryListCopyWith<$Res> {
  _$CreateGroceryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateGroceryListStartImplCopyWith<$Res> {
  factory _$$CreateGroceryListStartImplCopyWith(
          _$CreateGroceryListStartImpl value,
          $Res Function(_$CreateGroceryListStartImpl) then) =
      __$$CreateGroceryListStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, String selectedIcon});
}

/// @nodoc
class __$$CreateGroceryListStartImplCopyWithImpl<$Res>
    extends _$CreateGroceryListCopyWithImpl<$Res, _$CreateGroceryListStartImpl>
    implements _$$CreateGroceryListStartImplCopyWith<$Res> {
  __$$CreateGroceryListStartImplCopyWithImpl(
      _$CreateGroceryListStartImpl _value,
      $Res Function(_$CreateGroceryListStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? selectedIcon = null,
  }) {
    return _then(_$CreateGroceryListStartImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIcon: null == selectedIcon
          ? _value.selectedIcon
          : selectedIcon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateGroceryListStartImpl implements CreateGroceryListStart {
  const _$CreateGroceryListStartImpl(
      {required this.title,
      required this.description,
      required this.selectedIcon});

  @override
  final String title;
  @override
  final String description;
  @override
  final String selectedIcon;

  @override
  String toString() {
    return 'CreateGroceryList(title: $title, description: $description, selectedIcon: $selectedIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroceryListStartImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.selectedIcon, selectedIcon) ||
                other.selectedIcon == selectedIcon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, selectedIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroceryListStartImplCopyWith<_$CreateGroceryListStartImpl>
      get copyWith => __$$CreateGroceryListStartImplCopyWithImpl<
          _$CreateGroceryListStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)
        $default, {
    required TResult Function(GroceryList groceryList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(title, description, selectedIcon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String title, String description, String selectedIcon)?
        $default, {
    TResult? Function(GroceryList groceryList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(title, description, selectedIcon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)?
        $default, {
    TResult Function(GroceryList groceryList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(title, description, selectedIcon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateGroceryListStart value) $default, {
    required TResult Function(CreateGroceryListSuccessful value) successful,
    required TResult Function(CreateGroceryListError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateGroceryListStart value)? $default, {
    TResult? Function(CreateGroceryListSuccessful value)? successful,
    TResult? Function(CreateGroceryListError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateGroceryListStart value)? $default, {
    TResult Function(CreateGroceryListSuccessful value)? successful,
    TResult Function(CreateGroceryListError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateGroceryListStart implements CreateGroceryList {
  const factory CreateGroceryListStart(
      {required final String title,
      required final String description,
      required final String selectedIcon}) = _$CreateGroceryListStartImpl;

  String get title;
  String get description;
  String get selectedIcon;
  @JsonKey(ignore: true)
  _$$CreateGroceryListStartImplCopyWith<_$CreateGroceryListStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateGroceryListSuccessfulImplCopyWith<$Res> {
  factory _$$CreateGroceryListSuccessfulImplCopyWith(
          _$CreateGroceryListSuccessfulImpl value,
          $Res Function(_$CreateGroceryListSuccessfulImpl) then) =
      __$$CreateGroceryListSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GroceryList groceryList});

  $GroceryListCopyWith<$Res> get groceryList;
}

/// @nodoc
class __$$CreateGroceryListSuccessfulImplCopyWithImpl<$Res>
    extends _$CreateGroceryListCopyWithImpl<$Res,
        _$CreateGroceryListSuccessfulImpl>
    implements _$$CreateGroceryListSuccessfulImplCopyWith<$Res> {
  __$$CreateGroceryListSuccessfulImplCopyWithImpl(
      _$CreateGroceryListSuccessfulImpl _value,
      $Res Function(_$CreateGroceryListSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryList = null,
  }) {
    return _then(_$CreateGroceryListSuccessfulImpl(
      null == groceryList
          ? _value.groceryList
          : groceryList // ignore: cast_nullable_to_non_nullable
              as GroceryList,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GroceryListCopyWith<$Res> get groceryList {
    return $GroceryListCopyWith<$Res>(_value.groceryList, (value) {
      return _then(_value.copyWith(groceryList: value));
    });
  }
}

/// @nodoc

class _$CreateGroceryListSuccessfulImpl implements CreateGroceryListSuccessful {
  const _$CreateGroceryListSuccessfulImpl(this.groceryList);

  @override
  final GroceryList groceryList;

  @override
  String toString() {
    return 'CreateGroceryList.successful(groceryList: $groceryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroceryListSuccessfulImpl &&
            (identical(other.groceryList, groceryList) ||
                other.groceryList == groceryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroceryListSuccessfulImplCopyWith<_$CreateGroceryListSuccessfulImpl>
      get copyWith => __$$CreateGroceryListSuccessfulImplCopyWithImpl<
          _$CreateGroceryListSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)
        $default, {
    required TResult Function(GroceryList groceryList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(groceryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String title, String description, String selectedIcon)?
        $default, {
    TResult? Function(GroceryList groceryList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(groceryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)?
        $default, {
    TResult Function(GroceryList groceryList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(groceryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateGroceryListStart value) $default, {
    required TResult Function(CreateGroceryListSuccessful value) successful,
    required TResult Function(CreateGroceryListError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateGroceryListStart value)? $default, {
    TResult? Function(CreateGroceryListSuccessful value)? successful,
    TResult? Function(CreateGroceryListError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateGroceryListStart value)? $default, {
    TResult Function(CreateGroceryListSuccessful value)? successful,
    TResult Function(CreateGroceryListError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateGroceryListSuccessful implements CreateGroceryList {
  const factory CreateGroceryListSuccessful(final GroceryList groceryList) =
      _$CreateGroceryListSuccessfulImpl;

  GroceryList get groceryList;
  @JsonKey(ignore: true)
  _$$CreateGroceryListSuccessfulImplCopyWith<_$CreateGroceryListSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateGroceryListErrorImplCopyWith<$Res> {
  factory _$$CreateGroceryListErrorImplCopyWith(
          _$CreateGroceryListErrorImpl value,
          $Res Function(_$CreateGroceryListErrorImpl) then) =
      __$$CreateGroceryListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateGroceryListErrorImplCopyWithImpl<$Res>
    extends _$CreateGroceryListCopyWithImpl<$Res, _$CreateGroceryListErrorImpl>
    implements _$$CreateGroceryListErrorImplCopyWith<$Res> {
  __$$CreateGroceryListErrorImplCopyWithImpl(
      _$CreateGroceryListErrorImpl _value,
      $Res Function(_$CreateGroceryListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$CreateGroceryListErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$CreateGroceryListErrorImpl implements CreateGroceryListError {
  const _$CreateGroceryListErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateGroceryList.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroceryListErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroceryListErrorImplCopyWith<_$CreateGroceryListErrorImpl>
      get copyWith => __$$CreateGroceryListErrorImplCopyWithImpl<
          _$CreateGroceryListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)
        $default, {
    required TResult Function(GroceryList groceryList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String title, String description, String selectedIcon)?
        $default, {
    TResult? Function(GroceryList groceryList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)?
        $default, {
    TResult Function(GroceryList groceryList)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateGroceryListStart value) $default, {
    required TResult Function(CreateGroceryListSuccessful value) successful,
    required TResult Function(CreateGroceryListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateGroceryListStart value)? $default, {
    TResult? Function(CreateGroceryListSuccessful value)? successful,
    TResult? Function(CreateGroceryListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateGroceryListStart value)? $default, {
    TResult Function(CreateGroceryListSuccessful value)? successful,
    TResult Function(CreateGroceryListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateGroceryListError
    implements CreateGroceryList, ErrorAction {
  const factory CreateGroceryListError(
          final Object error, final StackTrace stackTrace) =
      _$CreateGroceryListErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreateGroceryListErrorImplCopyWith<_$CreateGroceryListErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListenForProducts {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groceryListTitle) start,
    required TResult Function(String groceryListTitle) done,
    required TResult Function(List<Product> products) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groceryListTitle)? start,
    TResult? Function(String groceryListTitle)? done,
    TResult? Function(List<Product> products)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groceryListTitle)? start,
    TResult Function(String groceryListTitle)? done,
    TResult Function(List<Product> products)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForProductsStart value) start,
    required TResult Function(ListenForProductsDone value) done,
    required TResult Function(OnProductsEvent value) event,
    required TResult Function(_ListenForProductsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForProductsStart value)? start,
    TResult? Function(ListenForProductsDone value)? done,
    TResult? Function(OnProductsEvent value)? event,
    TResult? Function(_ListenForProductsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForProductsStart value)? start,
    TResult Function(ListenForProductsDone value)? done,
    TResult Function(OnProductsEvent value)? event,
    TResult Function(_ListenForProductsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenForProductsCopyWith<$Res> {
  factory $ListenForProductsCopyWith(
          ListenForProducts value, $Res Function(ListenForProducts) then) =
      _$ListenForProductsCopyWithImpl<$Res, ListenForProducts>;
}

/// @nodoc
class _$ListenForProductsCopyWithImpl<$Res, $Val extends ListenForProducts>
    implements $ListenForProductsCopyWith<$Res> {
  _$ListenForProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListenForProductsStartImplCopyWith<$Res> {
  factory _$$ListenForProductsStartImplCopyWith(
          _$ListenForProductsStartImpl value,
          $Res Function(_$ListenForProductsStartImpl) then) =
      __$$ListenForProductsStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groceryListTitle});
}

/// @nodoc
class __$$ListenForProductsStartImplCopyWithImpl<$Res>
    extends _$ListenForProductsCopyWithImpl<$Res, _$ListenForProductsStartImpl>
    implements _$$ListenForProductsStartImplCopyWith<$Res> {
  __$$ListenForProductsStartImplCopyWithImpl(
      _$ListenForProductsStartImpl _value,
      $Res Function(_$ListenForProductsStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryListTitle = null,
  }) {
    return _then(_$ListenForProductsStartImpl(
      null == groceryListTitle
          ? _value.groceryListTitle
          : groceryListTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListenForProductsStartImpl implements ListenForProductsStart {
  const _$ListenForProductsStartImpl(this.groceryListTitle);

  @override
  final String groceryListTitle;

  @override
  String toString() {
    return 'ListenForProducts.start(groceryListTitle: $groceryListTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenForProductsStartImpl &&
            (identical(other.groceryListTitle, groceryListTitle) ||
                other.groceryListTitle == groceryListTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryListTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenForProductsStartImplCopyWith<_$ListenForProductsStartImpl>
      get copyWith => __$$ListenForProductsStartImplCopyWithImpl<
          _$ListenForProductsStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groceryListTitle) start,
    required TResult Function(String groceryListTitle) done,
    required TResult Function(List<Product> products) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return start(groceryListTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groceryListTitle)? start,
    TResult? Function(String groceryListTitle)? done,
    TResult? Function(List<Product> products)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return start?.call(groceryListTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groceryListTitle)? start,
    TResult Function(String groceryListTitle)? done,
    TResult Function(List<Product> products)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(groceryListTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForProductsStart value) start,
    required TResult Function(ListenForProductsDone value) done,
    required TResult Function(OnProductsEvent value) event,
    required TResult Function(_ListenForProductsError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForProductsStart value)? start,
    TResult? Function(ListenForProductsDone value)? done,
    TResult? Function(OnProductsEvent value)? event,
    TResult? Function(_ListenForProductsError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForProductsStart value)? start,
    TResult Function(ListenForProductsDone value)? done,
    TResult Function(OnProductsEvent value)? event,
    TResult Function(_ListenForProductsError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class ListenForProductsStart implements ListenForProducts {
  const factory ListenForProductsStart(final String groceryListTitle) =
      _$ListenForProductsStartImpl;

  String get groceryListTitle;
  @JsonKey(ignore: true)
  _$$ListenForProductsStartImplCopyWith<_$ListenForProductsStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListenForProductsDoneImplCopyWith<$Res> {
  factory _$$ListenForProductsDoneImplCopyWith(
          _$ListenForProductsDoneImpl value,
          $Res Function(_$ListenForProductsDoneImpl) then) =
      __$$ListenForProductsDoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String groceryListTitle});
}

/// @nodoc
class __$$ListenForProductsDoneImplCopyWithImpl<$Res>
    extends _$ListenForProductsCopyWithImpl<$Res, _$ListenForProductsDoneImpl>
    implements _$$ListenForProductsDoneImplCopyWith<$Res> {
  __$$ListenForProductsDoneImplCopyWithImpl(_$ListenForProductsDoneImpl _value,
      $Res Function(_$ListenForProductsDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryListTitle = null,
  }) {
    return _then(_$ListenForProductsDoneImpl(
      null == groceryListTitle
          ? _value.groceryListTitle
          : groceryListTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListenForProductsDoneImpl implements ListenForProductsDone {
  const _$ListenForProductsDoneImpl(this.groceryListTitle);

  @override
  final String groceryListTitle;

  @override
  String toString() {
    return 'ListenForProducts.done(groceryListTitle: $groceryListTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenForProductsDoneImpl &&
            (identical(other.groceryListTitle, groceryListTitle) ||
                other.groceryListTitle == groceryListTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryListTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenForProductsDoneImplCopyWith<_$ListenForProductsDoneImpl>
      get copyWith => __$$ListenForProductsDoneImplCopyWithImpl<
          _$ListenForProductsDoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groceryListTitle) start,
    required TResult Function(String groceryListTitle) done,
    required TResult Function(List<Product> products) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return done(groceryListTitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groceryListTitle)? start,
    TResult? Function(String groceryListTitle)? done,
    TResult? Function(List<Product> products)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return done?.call(groceryListTitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groceryListTitle)? start,
    TResult Function(String groceryListTitle)? done,
    TResult Function(List<Product> products)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(groceryListTitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForProductsStart value) start,
    required TResult Function(ListenForProductsDone value) done,
    required TResult Function(OnProductsEvent value) event,
    required TResult Function(_ListenForProductsError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForProductsStart value)? start,
    TResult? Function(ListenForProductsDone value)? done,
    TResult? Function(OnProductsEvent value)? event,
    TResult? Function(_ListenForProductsError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForProductsStart value)? start,
    TResult Function(ListenForProductsDone value)? done,
    TResult Function(OnProductsEvent value)? event,
    TResult Function(_ListenForProductsError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ListenForProductsDone implements ListenForProducts {
  const factory ListenForProductsDone(final String groceryListTitle) =
      _$ListenForProductsDoneImpl;

  String get groceryListTitle;
  @JsonKey(ignore: true)
  _$$ListenForProductsDoneImplCopyWith<_$ListenForProductsDoneImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnProductsEventImplCopyWith<$Res> {
  factory _$$OnProductsEventImplCopyWith(_$OnProductsEventImpl value,
          $Res Function(_$OnProductsEventImpl) then) =
      __$$OnProductsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$OnProductsEventImplCopyWithImpl<$Res>
    extends _$ListenForProductsCopyWithImpl<$Res, _$OnProductsEventImpl>
    implements _$$OnProductsEventImplCopyWith<$Res> {
  __$$OnProductsEventImplCopyWithImpl(
      _$OnProductsEventImpl _value, $Res Function(_$OnProductsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$OnProductsEventImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$OnProductsEventImpl implements OnProductsEvent {
  const _$OnProductsEventImpl(final List<Product> products)
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ListenForProducts.event(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnProductsEventImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnProductsEventImplCopyWith<_$OnProductsEventImpl> get copyWith =>
      __$$OnProductsEventImplCopyWithImpl<_$OnProductsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groceryListTitle) start,
    required TResult Function(String groceryListTitle) done,
    required TResult Function(List<Product> products) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return event(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groceryListTitle)? start,
    TResult? Function(String groceryListTitle)? done,
    TResult? Function(List<Product> products)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return event?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groceryListTitle)? start,
    TResult Function(String groceryListTitle)? done,
    TResult Function(List<Product> products)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForProductsStart value) start,
    required TResult Function(ListenForProductsDone value) done,
    required TResult Function(OnProductsEvent value) event,
    required TResult Function(_ListenForProductsError value) error,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForProductsStart value)? start,
    TResult? Function(ListenForProductsDone value)? done,
    TResult? Function(OnProductsEvent value)? event,
    TResult? Function(_ListenForProductsError value)? error,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForProductsStart value)? start,
    TResult Function(ListenForProductsDone value)? done,
    TResult Function(OnProductsEvent value)? event,
    TResult Function(_ListenForProductsError value)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class OnProductsEvent implements ListenForProducts {
  const factory OnProductsEvent(final List<Product> products) =
      _$OnProductsEventImpl;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$OnProductsEventImplCopyWith<_$OnProductsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListenForProductsErrorImplCopyWith<$Res> {
  factory _$$ListenForProductsErrorImplCopyWith(
          _$ListenForProductsErrorImpl value,
          $Res Function(_$ListenForProductsErrorImpl) then) =
      __$$ListenForProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ListenForProductsErrorImplCopyWithImpl<$Res>
    extends _$ListenForProductsCopyWithImpl<$Res, _$ListenForProductsErrorImpl>
    implements _$$ListenForProductsErrorImplCopyWith<$Res> {
  __$$ListenForProductsErrorImplCopyWithImpl(
      _$ListenForProductsErrorImpl _value,
      $Res Function(_$ListenForProductsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ListenForProductsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ListenForProductsErrorImpl implements _ListenForProductsError {
  const _$ListenForProductsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ListenForProducts.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenForProductsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenForProductsErrorImplCopyWith<_$ListenForProductsErrorImpl>
      get copyWith => __$$ListenForProductsErrorImplCopyWithImpl<
          _$ListenForProductsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groceryListTitle) start,
    required TResult Function(String groceryListTitle) done,
    required TResult Function(List<Product> products) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groceryListTitle)? start,
    TResult? Function(String groceryListTitle)? done,
    TResult? Function(List<Product> products)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groceryListTitle)? start,
    TResult Function(String groceryListTitle)? done,
    TResult Function(List<Product> products)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForProductsStart value) start,
    required TResult Function(ListenForProductsDone value) done,
    required TResult Function(OnProductsEvent value) event,
    required TResult Function(_ListenForProductsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForProductsStart value)? start,
    TResult? Function(ListenForProductsDone value)? done,
    TResult? Function(OnProductsEvent value)? event,
    TResult? Function(_ListenForProductsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForProductsStart value)? start,
    TResult Function(ListenForProductsDone value)? done,
    TResult Function(OnProductsEvent value)? event,
    TResult Function(_ListenForProductsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ListenForProductsError
    implements ListenForProducts, ErrorAction {
  const factory _ListenForProductsError(
          final Object error, final StackTrace stackTrace) =
      _$ListenForProductsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ListenForProductsErrorImplCopyWith<_$ListenForProductsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListenForLists {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(Set<GroceryList> groceryLists) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? done,
    TResult? Function(Set<GroceryList> groceryLists)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(Set<GroceryList> groceryLists)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForListsStart value) start,
    required TResult Function(ListenForListsDone value) done,
    required TResult Function(OnListsEvent value) event,
    required TResult Function(_ListenForListsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForListsStart value)? start,
    TResult? Function(ListenForListsDone value)? done,
    TResult? Function(OnListsEvent value)? event,
    TResult? Function(_ListenForListsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForListsStart value)? start,
    TResult Function(ListenForListsDone value)? done,
    TResult Function(OnListsEvent value)? event,
    TResult Function(_ListenForListsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenForListsCopyWith<$Res> {
  factory $ListenForListsCopyWith(
          ListenForLists value, $Res Function(ListenForLists) then) =
      _$ListenForListsCopyWithImpl<$Res, ListenForLists>;
}

/// @nodoc
class _$ListenForListsCopyWithImpl<$Res, $Val extends ListenForLists>
    implements $ListenForListsCopyWith<$Res> {
  _$ListenForListsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListenForListsStartImplCopyWith<$Res> {
  factory _$$ListenForListsStartImplCopyWith(_$ListenForListsStartImpl value,
          $Res Function(_$ListenForListsStartImpl) then) =
      __$$ListenForListsStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListenForListsStartImplCopyWithImpl<$Res>
    extends _$ListenForListsCopyWithImpl<$Res, _$ListenForListsStartImpl>
    implements _$$ListenForListsStartImplCopyWith<$Res> {
  __$$ListenForListsStartImplCopyWithImpl(_$ListenForListsStartImpl _value,
      $Res Function(_$ListenForListsStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListenForListsStartImpl implements ListenForListsStart {
  const _$ListenForListsStartImpl();

  @override
  String toString() {
    return 'ListenForLists.start()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenForListsStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(Set<GroceryList> groceryLists) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? done,
    TResult? Function(Set<GroceryList> groceryLists)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(Set<GroceryList> groceryLists)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForListsStart value) start,
    required TResult Function(ListenForListsDone value) done,
    required TResult Function(OnListsEvent value) event,
    required TResult Function(_ListenForListsError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForListsStart value)? start,
    TResult? Function(ListenForListsDone value)? done,
    TResult? Function(OnListsEvent value)? event,
    TResult? Function(_ListenForListsError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForListsStart value)? start,
    TResult Function(ListenForListsDone value)? done,
    TResult Function(OnListsEvent value)? event,
    TResult Function(_ListenForListsError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class ListenForListsStart implements ListenForLists {
  const factory ListenForListsStart() = _$ListenForListsStartImpl;
}

/// @nodoc
abstract class _$$ListenForListsDoneImplCopyWith<$Res> {
  factory _$$ListenForListsDoneImplCopyWith(_$ListenForListsDoneImpl value,
          $Res Function(_$ListenForListsDoneImpl) then) =
      __$$ListenForListsDoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListenForListsDoneImplCopyWithImpl<$Res>
    extends _$ListenForListsCopyWithImpl<$Res, _$ListenForListsDoneImpl>
    implements _$$ListenForListsDoneImplCopyWith<$Res> {
  __$$ListenForListsDoneImplCopyWithImpl(_$ListenForListsDoneImpl _value,
      $Res Function(_$ListenForListsDoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListenForListsDoneImpl implements ListenForListsDone {
  const _$ListenForListsDoneImpl();

  @override
  String toString() {
    return 'ListenForLists.done()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListenForListsDoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(Set<GroceryList> groceryLists) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? done,
    TResult? Function(Set<GroceryList> groceryLists)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(Set<GroceryList> groceryLists)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForListsStart value) start,
    required TResult Function(ListenForListsDone value) done,
    required TResult Function(OnListsEvent value) event,
    required TResult Function(_ListenForListsError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForListsStart value)? start,
    TResult? Function(ListenForListsDone value)? done,
    TResult? Function(OnListsEvent value)? event,
    TResult? Function(_ListenForListsError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForListsStart value)? start,
    TResult Function(ListenForListsDone value)? done,
    TResult Function(OnListsEvent value)? event,
    TResult Function(_ListenForListsError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ListenForListsDone implements ListenForLists {
  const factory ListenForListsDone() = _$ListenForListsDoneImpl;
}

/// @nodoc
abstract class _$$OnListsEventImplCopyWith<$Res> {
  factory _$$OnListsEventImplCopyWith(
          _$OnListsEventImpl value, $Res Function(_$OnListsEventImpl) then) =
      __$$OnListsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<GroceryList> groceryLists});
}

/// @nodoc
class __$$OnListsEventImplCopyWithImpl<$Res>
    extends _$ListenForListsCopyWithImpl<$Res, _$OnListsEventImpl>
    implements _$$OnListsEventImplCopyWith<$Res> {
  __$$OnListsEventImplCopyWithImpl(
      _$OnListsEventImpl _value, $Res Function(_$OnListsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryLists = null,
  }) {
    return _then(_$OnListsEventImpl(
      null == groceryLists
          ? _value._groceryLists
          : groceryLists // ignore: cast_nullable_to_non_nullable
              as Set<GroceryList>,
    ));
  }
}

/// @nodoc

class _$OnListsEventImpl implements OnListsEvent {
  const _$OnListsEventImpl(final Set<GroceryList> groceryLists)
      : _groceryLists = groceryLists;

  final Set<GroceryList> _groceryLists;
  @override
  Set<GroceryList> get groceryLists {
    if (_groceryLists is EqualUnmodifiableSetView) return _groceryLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_groceryLists);
  }

  @override
  String toString() {
    return 'ListenForLists.event(groceryLists: $groceryLists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnListsEventImpl &&
            const DeepCollectionEquality()
                .equals(other._groceryLists, _groceryLists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_groceryLists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnListsEventImplCopyWith<_$OnListsEventImpl> get copyWith =>
      __$$OnListsEventImplCopyWithImpl<_$OnListsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(Set<GroceryList> groceryLists) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return event(groceryLists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? done,
    TResult? Function(Set<GroceryList> groceryLists)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return event?.call(groceryLists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(Set<GroceryList> groceryLists)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(groceryLists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForListsStart value) start,
    required TResult Function(ListenForListsDone value) done,
    required TResult Function(OnListsEvent value) event,
    required TResult Function(_ListenForListsError value) error,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForListsStart value)? start,
    TResult? Function(ListenForListsDone value)? done,
    TResult? Function(OnListsEvent value)? event,
    TResult? Function(_ListenForListsError value)? error,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForListsStart value)? start,
    TResult Function(ListenForListsDone value)? done,
    TResult Function(OnListsEvent value)? event,
    TResult Function(_ListenForListsError value)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class OnListsEvent implements ListenForLists {
  const factory OnListsEvent(final Set<GroceryList> groceryLists) =
      _$OnListsEventImpl;

  Set<GroceryList> get groceryLists;
  @JsonKey(ignore: true)
  _$$OnListsEventImplCopyWith<_$OnListsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListenForListsErrorImplCopyWith<$Res> {
  factory _$$ListenForListsErrorImplCopyWith(_$ListenForListsErrorImpl value,
          $Res Function(_$ListenForListsErrorImpl) then) =
      __$$ListenForListsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ListenForListsErrorImplCopyWithImpl<$Res>
    extends _$ListenForListsCopyWithImpl<$Res, _$ListenForListsErrorImpl>
    implements _$$ListenForListsErrorImplCopyWith<$Res> {
  __$$ListenForListsErrorImplCopyWithImpl(_$ListenForListsErrorImpl _value,
      $Res Function(_$ListenForListsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ListenForListsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ListenForListsErrorImpl implements _ListenForListsError {
  const _$ListenForListsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ListenForLists.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenForListsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenForListsErrorImplCopyWith<_$ListenForListsErrorImpl> get copyWith =>
      __$$ListenForListsErrorImplCopyWithImpl<_$ListenForListsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(Set<GroceryList> groceryLists) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? start,
    TResult? Function()? done,
    TResult? Function(Set<GroceryList> groceryLists)? event,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(Set<GroceryList> groceryLists)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForListsStart value) start,
    required TResult Function(ListenForListsDone value) done,
    required TResult Function(OnListsEvent value) event,
    required TResult Function(_ListenForListsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListenForListsStart value)? start,
    TResult? Function(ListenForListsDone value)? done,
    TResult? Function(OnListsEvent value)? event,
    TResult? Function(_ListenForListsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForListsStart value)? start,
    TResult Function(ListenForListsDone value)? done,
    TResult Function(OnListsEvent value)? event,
    TResult Function(_ListenForListsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ListenForListsError implements ListenForLists, ErrorAction {
  const factory _ListenForListsError(
          final Object error, final StackTrace stackTrace) =
      _$ListenForListsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ListenForListsErrorImplCopyWith<_$ListenForListsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetSelectedList {
  String get selectedGroceryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedListCopyWith<SetSelectedList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedListCopyWith<$Res> {
  factory $SetSelectedListCopyWith(
          SetSelectedList value, $Res Function(SetSelectedList) then) =
      _$SetSelectedListCopyWithImpl<$Res, SetSelectedList>;
  @useResult
  $Res call({String selectedGroceryList});
}

/// @nodoc
class _$SetSelectedListCopyWithImpl<$Res, $Val extends SetSelectedList>
    implements $SetSelectedListCopyWith<$Res> {
  _$SetSelectedListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGroceryList = null,
  }) {
    return _then(_value.copyWith(
      selectedGroceryList: null == selectedGroceryList
          ? _value.selectedGroceryList
          : selectedGroceryList // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetSelectedList$ImplCopyWith<$Res>
    implements $SetSelectedListCopyWith<$Res> {
  factory _$$SetSelectedList$ImplCopyWith(_$SetSelectedList$Impl value,
          $Res Function(_$SetSelectedList$Impl) then) =
      __$$SetSelectedList$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedGroceryList});
}

/// @nodoc
class __$$SetSelectedList$ImplCopyWithImpl<$Res>
    extends _$SetSelectedListCopyWithImpl<$Res, _$SetSelectedList$Impl>
    implements _$$SetSelectedList$ImplCopyWith<$Res> {
  __$$SetSelectedList$ImplCopyWithImpl(_$SetSelectedList$Impl _value,
      $Res Function(_$SetSelectedList$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGroceryList = null,
  }) {
    return _then(_$SetSelectedList$Impl(
      null == selectedGroceryList
          ? _value.selectedGroceryList
          : selectedGroceryList // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetSelectedList$Impl implements SetSelectedList$ {
  const _$SetSelectedList$Impl(this.selectedGroceryList);

  @override
  final String selectedGroceryList;

  @override
  String toString() {
    return 'SetSelectedList(selectedGroceryList: $selectedGroceryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedList$Impl &&
            (identical(other.selectedGroceryList, selectedGroceryList) ||
                other.selectedGroceryList == selectedGroceryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedGroceryList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedList$ImplCopyWith<_$SetSelectedList$Impl> get copyWith =>
      __$$SetSelectedList$ImplCopyWithImpl<_$SetSelectedList$Impl>(
          this, _$identity);
}

abstract class SetSelectedList$ implements SetSelectedList {
  const factory SetSelectedList$(final String selectedGroceryList) =
      _$SetSelectedList$Impl;

  @override
  String get selectedGroceryList;
  @override
  @JsonKey(ignore: true)
  _$$SetSelectedList$ImplCopyWith<_$SetSelectedList$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetProductsListToEmpty {}

/// @nodoc
abstract class $SetProductsListToEmptyCopyWith<$Res> {
  factory $SetProductsListToEmptyCopyWith(SetProductsListToEmpty value,
          $Res Function(SetProductsListToEmpty) then) =
      _$SetProductsListToEmptyCopyWithImpl<$Res, SetProductsListToEmpty>;
}

/// @nodoc
class _$SetProductsListToEmptyCopyWithImpl<$Res,
        $Val extends SetProductsListToEmpty>
    implements $SetProductsListToEmptyCopyWith<$Res> {
  _$SetProductsListToEmptyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetProductsListToEmpty$ImplCopyWith<$Res> {
  factory _$$SetProductsListToEmpty$ImplCopyWith(
          _$SetProductsListToEmpty$Impl value,
          $Res Function(_$SetProductsListToEmpty$Impl) then) =
      __$$SetProductsListToEmpty$ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetProductsListToEmpty$ImplCopyWithImpl<$Res>
    extends _$SetProductsListToEmptyCopyWithImpl<$Res,
        _$SetProductsListToEmpty$Impl>
    implements _$$SetProductsListToEmpty$ImplCopyWith<$Res> {
  __$$SetProductsListToEmpty$ImplCopyWithImpl(
      _$SetProductsListToEmpty$Impl _value,
      $Res Function(_$SetProductsListToEmpty$Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetProductsListToEmpty$Impl implements SetProductsListToEmpty$ {
  const _$SetProductsListToEmpty$Impl();

  @override
  String toString() {
    return 'SetProductsListToEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetProductsListToEmpty$Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SetProductsListToEmpty$ implements SetProductsListToEmpty {
  const factory SetProductsListToEmpty$() = _$SetProductsListToEmpty$Impl;
}

/// @nodoc
mixin _$CreateProduct {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, double price) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, double price)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, double price)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateProductStart value) $default, {
    required TResult Function(CreateProductSuccessful value) successful,
    required TResult Function(CreateProductError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateProductStart value)? $default, {
    TResult? Function(CreateProductSuccessful value)? successful,
    TResult? Function(CreateProductError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateProductStart value)? $default, {
    TResult Function(CreateProductSuccessful value)? successful,
    TResult Function(CreateProductError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductCopyWith<$Res> {
  factory $CreateProductCopyWith(
          CreateProduct value, $Res Function(CreateProduct) then) =
      _$CreateProductCopyWithImpl<$Res, CreateProduct>;
}

/// @nodoc
class _$CreateProductCopyWithImpl<$Res, $Val extends CreateProduct>
    implements $CreateProductCopyWith<$Res> {
  _$CreateProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateProductStartImplCopyWith<$Res> {
  factory _$$CreateProductStartImplCopyWith(_$CreateProductStartImpl value,
          $Res Function(_$CreateProductStartImpl) then) =
      __$$CreateProductStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, double price});
}

/// @nodoc
class __$$CreateProductStartImplCopyWithImpl<$Res>
    extends _$CreateProductCopyWithImpl<$Res, _$CreateProductStartImpl>
    implements _$$CreateProductStartImplCopyWith<$Res> {
  __$$CreateProductStartImplCopyWithImpl(_$CreateProductStartImpl _value,
      $Res Function(_$CreateProductStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
  }) {
    return _then(_$CreateProductStartImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CreateProductStartImpl implements CreateProductStart {
  const _$CreateProductStartImpl(this.name, this.price);

  @override
  final String name;
  @override
  final double price;

  @override
  String toString() {
    return 'CreateProduct(name: $name, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProductStartImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProductStartImplCopyWith<_$CreateProductStartImpl> get copyWith =>
      __$$CreateProductStartImplCopyWithImpl<_$CreateProductStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, double price) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(name, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, double price)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(name, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, double price)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateProductStart value) $default, {
    required TResult Function(CreateProductSuccessful value) successful,
    required TResult Function(CreateProductError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateProductStart value)? $default, {
    TResult? Function(CreateProductSuccessful value)? successful,
    TResult? Function(CreateProductError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateProductStart value)? $default, {
    TResult Function(CreateProductSuccessful value)? successful,
    TResult Function(CreateProductError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateProductStart implements CreateProduct {
  const factory CreateProductStart(final String name, final double price) =
      _$CreateProductStartImpl;

  String get name;
  double get price;
  @JsonKey(ignore: true)
  _$$CreateProductStartImplCopyWith<_$CreateProductStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProductSuccessfulImplCopyWith<$Res> {
  factory _$$CreateProductSuccessfulImplCopyWith(
          _$CreateProductSuccessfulImpl value,
          $Res Function(_$CreateProductSuccessfulImpl) then) =
      __$$CreateProductSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateProductSuccessfulImplCopyWithImpl<$Res>
    extends _$CreateProductCopyWithImpl<$Res, _$CreateProductSuccessfulImpl>
    implements _$$CreateProductSuccessfulImplCopyWith<$Res> {
  __$$CreateProductSuccessfulImplCopyWithImpl(
      _$CreateProductSuccessfulImpl _value,
      $Res Function(_$CreateProductSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateProductSuccessfulImpl implements CreateProductSuccessful {
  const _$CreateProductSuccessfulImpl();

  @override
  String toString() {
    return 'CreateProduct.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProductSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, double price) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, double price)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, double price)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateProductStart value) $default, {
    required TResult Function(CreateProductSuccessful value) successful,
    required TResult Function(CreateProductError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateProductStart value)? $default, {
    TResult? Function(CreateProductSuccessful value)? successful,
    TResult? Function(CreateProductError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateProductStart value)? $default, {
    TResult Function(CreateProductSuccessful value)? successful,
    TResult Function(CreateProductError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateProductSuccessful implements CreateProduct {
  const factory CreateProductSuccessful() = _$CreateProductSuccessfulImpl;
}

/// @nodoc
abstract class _$$CreateProductErrorImplCopyWith<$Res> {
  factory _$$CreateProductErrorImplCopyWith(_$CreateProductErrorImpl value,
          $Res Function(_$CreateProductErrorImpl) then) =
      __$$CreateProductErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateProductErrorImplCopyWithImpl<$Res>
    extends _$CreateProductCopyWithImpl<$Res, _$CreateProductErrorImpl>
    implements _$$CreateProductErrorImplCopyWith<$Res> {
  __$$CreateProductErrorImplCopyWithImpl(_$CreateProductErrorImpl _value,
      $Res Function(_$CreateProductErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$CreateProductErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$CreateProductErrorImpl implements CreateProductError {
  const _$CreateProductErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateProduct.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProductErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProductErrorImplCopyWith<_$CreateProductErrorImpl> get copyWith =>
      __$$CreateProductErrorImplCopyWithImpl<_$CreateProductErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, double price) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, double price)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, double price)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateProductStart value) $default, {
    required TResult Function(CreateProductSuccessful value) successful,
    required TResult Function(CreateProductError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CreateProductStart value)? $default, {
    TResult? Function(CreateProductSuccessful value)? successful,
    TResult? Function(CreateProductError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateProductStart value)? $default, {
    TResult Function(CreateProductSuccessful value)? successful,
    TResult Function(CreateProductError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateProductError implements CreateProduct, ErrorAction {
  const factory CreateProductError(
          final Object error, final StackTrace stackTrace) =
      _$CreateProductErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreateProductErrorImplCopyWith<_$CreateProductErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
