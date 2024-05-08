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
mixin _$Login {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, ActionResult onResult, String pendingId) start,
    required TResult Function(AppUser user, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult? Function(AppUser user, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStart value) start,
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStart value)? start,
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStart value)? start,
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginCopyWith<Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) = _$LoginCopyWithImpl<$Res, Login>;
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_value.copyWith(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStartImplCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$$LoginStartImplCopyWith(_$LoginStartImpl value, $Res Function(_$LoginStartImpl) then) =
      __$$LoginStartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, ActionResult onResult, String pendingId});
}

/// @nodoc
class __$$LoginStartImplCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res, _$LoginStartImpl>
    implements _$$LoginStartImplCopyWith<$Res> {
  __$$LoginStartImplCopyWithImpl(_$LoginStartImpl _value, $Res Function(_$LoginStartImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? onResult = null,
    Object? pendingId = null,
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
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStartImpl implements LoginStart {
  const _$LoginStartImpl(
      {required this.email, required this.password, required this.onResult, this.pendingId = _kLoginPendingId});

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResult onResult;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'Login.start(email: $email, password: $password, onResult: $onResult, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStartImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) || other.password == password) &&
            (identical(other.onResult, onResult) || other.onResult == onResult) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, onResult, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStartImplCopyWith<_$LoginStartImpl> get copyWith =>
      __$$LoginStartImplCopyWithImpl<_$LoginStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, ActionResult onResult, String pendingId) start,
    required TResult Function(AppUser user, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(email, password, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult? Function(AppUser user, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(email, password, onResult, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(email, password, onResult, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStart value) start,
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStart value)? start,
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStart value)? start,
    TResult Function(LoginSuccessful value)? successful,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class LoginStart implements Login, ActionStart {
  const factory LoginStart(
      {required final String email,
      required final String password,
      required final ActionResult onResult,
      final String pendingId}) = _$LoginStartImpl;

  String get email;
  String get password;
  ActionResult get onResult;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$LoginStartImplCopyWith<_$LoginStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessfulImplCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$$LoginSuccessfulImplCopyWith(_$LoginSuccessfulImpl value, $Res Function(_$LoginSuccessfulImpl) then) =
      __$$LoginSuccessfulImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser user, String pendingId});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginSuccessfulImplCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res, _$LoginSuccessfulImpl>
    implements _$$LoginSuccessfulImplCopyWith<$Res> {
  __$$LoginSuccessfulImplCopyWithImpl(_$LoginSuccessfulImpl _value, $Res Function(_$LoginSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? pendingId = null,
  }) {
    return _then(_$LoginSuccessfulImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
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
  const _$LoginSuccessfulImpl(this.user, [this.pendingId = _kLoginPendingId]);

  @override
  final AppUser user;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'Login.successful(user: $user, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessfulImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessfulImplCopyWith<_$LoginSuccessfulImpl> get copyWith =>
      __$$LoginSuccessfulImplCopyWithImpl<_$LoginSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, ActionResult onResult, String pendingId) start,
    required TResult Function(AppUser user, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(user, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult? Function(AppUser user, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(user, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStart value) start,
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStart value)? start,
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStart value)? start,
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

abstract class LoginSuccessful implements Login, UserAction, ActionDone {
  const factory LoginSuccessful(final AppUser user, [final String pendingId]) = _$LoginSuccessfulImpl;

  AppUser get user;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$LoginSuccessfulImplCopyWith<_$LoginSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(_$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(_$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
    Object? pendingId = null,
  }) {
    return _then(_$LoginErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl implements LoginError {
  const _$LoginErrorImpl(this.error, this.stackTrace, [this.pendingId = _kLoginPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'Login.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, ActionResult onResult, String pendingId) start,
    required TResult Function(AppUser user, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult? Function(AppUser user, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, ActionResult onResult, String pendingId)? start,
    TResult Function(AppUser user, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStart value) start,
    required TResult Function(LoginSuccessful value) successful,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStart value)? start,
    TResult? Function(LoginSuccessful value)? successful,
    TResult? Function(LoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStart value)? start,
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

abstract class LoginError implements Login, ActionDone, ErrorAction {
  const factory LoginError(final Object error, final StackTrace stackTrace, [final String pendingId]) =
      _$LoginErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String username, ActionResult onResult)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username, ActionResult onResult)? $default, {
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
  factory $CreateUserCopyWith(CreateUser value, $Res Function(CreateUser) then) =
      _$CreateUserCopyWithImpl<$Res, CreateUser>;
}

/// @nodoc
class _$CreateUserCopyWithImpl<$Res, $Val extends CreateUser> implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateUserStartImplCopyWith<$Res> {
  factory _$$CreateUserStartImplCopyWith(_$CreateUserStartImpl value, $Res Function(_$CreateUserStartImpl) then) =
      __$$CreateUserStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String username, ActionResult onResult});
}

/// @nodoc
class __$$CreateUserStartImplCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserStartImpl>
    implements _$$CreateUserStartImplCopyWith<$Res> {
  __$$CreateUserStartImplCopyWithImpl(_$CreateUserStartImpl _value, $Res Function(_$CreateUserStartImpl) _then)
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
      {required this.email, required this.password, required this.username, required this.onResult});

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
            (identical(other.password, password) || other.password == password) &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.onResult, onResult) || other.onResult == onResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, username, onResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserStartImplCopyWith<_$CreateUserStartImpl> get copyWith =>
      __$$CreateUserStartImplCopyWithImpl<_$CreateUserStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, username, onResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String username, ActionResult onResult)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, username, onResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username, ActionResult onResult)? $default, {
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
  _$$CreateUserStartImplCopyWith<_$CreateUserStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserSuccessfulImplCopyWith<$Res> {
  factory _$$CreateUserSuccessfulImplCopyWith(
          _$CreateUserSuccessfulImpl value, $Res Function(_$CreateUserSuccessfulImpl) then) =
      __$$CreateUserSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$CreateUserSuccessfulImplCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserSuccessfulImpl>
    implements _$$CreateUserSuccessfulImplCopyWith<$Res> {
  __$$CreateUserSuccessfulImplCopyWithImpl(
      _$CreateUserSuccessfulImpl _value, $Res Function(_$CreateUserSuccessfulImpl) _then)
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
  _$$CreateUserSuccessfulImplCopyWith<_$CreateUserSuccessfulImpl> get copyWith =>
      __$$CreateUserSuccessfulImplCopyWithImpl<_$CreateUserSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String username, ActionResult onResult)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username, ActionResult onResult)? $default, {
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
  const factory CreateUserSuccessful(final AppUser user) = _$CreateUserSuccessfulImpl;

  AppUser get user;
  @JsonKey(ignore: true)
  _$$CreateUserSuccessfulImplCopyWith<_$CreateUserSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserErrorImplCopyWith<$Res> {
  factory _$$CreateUserErrorImplCopyWith(_$CreateUserErrorImpl value, $Res Function(_$CreateUserErrorImpl) then) =
      __$$CreateUserErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateUserErrorImplCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res, _$CreateUserErrorImpl>
    implements _$$CreateUserErrorImplCopyWith<$Res> {
  __$$CreateUserErrorImplCopyWithImpl(_$CreateUserErrorImpl _value, $Res Function(_$CreateUserErrorImpl) _then)
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
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserErrorImplCopyWith<_$CreateUserErrorImpl> get copyWith =>
      __$$CreateUserErrorImplCopyWithImpl<_$CreateUserErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, String username, ActionResult onResult) $default, {
    required TResult Function(AppUser user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, String username, ActionResult onResult)? $default, {
    TResult? Function(AppUser user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, String username, ActionResult onResult)? $default, {
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
  const factory CreateUserError(final Object error, final StackTrace stackTrace) = _$CreateUserErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreateUserErrorImplCopyWith<_$CreateUserErrorImpl> get copyWith => throw _privateConstructorUsedError;
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
  factory $GetCurrentUserCopyWith(GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res, GetCurrentUser>;
}

/// @nodoc
class _$GetCurrentUserCopyWithImpl<$Res, $Val extends GetCurrentUser> implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrentUserStartImplCopyWith<$Res> {
  factory _$$GetCurrentUserStartImplCopyWith(
          _$GetCurrentUserStartImpl value, $Res Function(_$GetCurrentUserStartImpl) then) =
      __$$GetCurrentUserStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserStartImplCopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res, _$GetCurrentUserStartImpl>
    implements _$$GetCurrentUserStartImplCopyWith<$Res> {
  __$$GetCurrentUserStartImplCopyWithImpl(
      _$GetCurrentUserStartImpl _value, $Res Function(_$GetCurrentUserStartImpl) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetCurrentUserStartImpl);
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
          _$GetCurrentUserSuccessfulImpl value, $Res Function(_$GetCurrentUserSuccessfulImpl) then) =
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
      _$GetCurrentUserSuccessfulImpl _value, $Res Function(_$GetCurrentUserSuccessfulImpl) _then)
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
  _$$GetCurrentUserSuccessfulImplCopyWith<_$GetCurrentUserSuccessfulImpl> get copyWith =>
      __$$GetCurrentUserSuccessfulImplCopyWithImpl<_$GetCurrentUserSuccessfulImpl>(this, _$identity);

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
  const factory GetCurrentUserSuccessful(final AppUser? user) = _$GetCurrentUserSuccessfulImpl;

  AppUser? get user;
  @JsonKey(ignore: true)
  _$$GetCurrentUserSuccessfulImplCopyWith<_$GetCurrentUserSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCurrentUserErrorImplCopyWith<$Res> {
  factory _$$GetCurrentUserErrorImplCopyWith(
          _$GetCurrentUserErrorImpl value, $Res Function(_$GetCurrentUserErrorImpl) then) =
      __$$GetCurrentUserErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetCurrentUserErrorImplCopyWithImpl<$Res>
    extends _$GetCurrentUserCopyWithImpl<$Res, _$GetCurrentUserErrorImpl>
    implements _$$GetCurrentUserErrorImplCopyWith<$Res> {
  __$$GetCurrentUserErrorImplCopyWithImpl(
      _$GetCurrentUserErrorImpl _value, $Res Function(_$GetCurrentUserErrorImpl) _then)
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
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrentUserErrorImplCopyWith<_$GetCurrentUserErrorImpl> get copyWith =>
      __$$GetCurrentUserErrorImplCopyWithImpl<_$GetCurrentUserErrorImpl>(this, _$identity);

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
  const factory GetCurrentUserError(final Object error, final StackTrace stackTrace) = _$GetCurrentUserErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetCurrentUserErrorImplCopyWith<_$GetCurrentUserErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Logout {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutStart value) start,
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStart value)? start,
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStart value)? start,
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogoutCopyWith<Logout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) = _$LogoutCopyWithImpl<$Res, Logout>;
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res, $Val extends Logout> implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_value.copyWith(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogoutStartImplCopyWith<$Res> implements $LogoutCopyWith<$Res> {
  factory _$$LogoutStartImplCopyWith(_$LogoutStartImpl value, $Res Function(_$LogoutStartImpl) then) =
      __$$LogoutStartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class __$$LogoutStartImplCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res, _$LogoutStartImpl>
    implements _$$LogoutStartImplCopyWith<$Res> {
  __$$LogoutStartImplCopyWithImpl(_$LogoutStartImpl _value, $Res Function(_$LogoutStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_$LogoutStartImpl(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogoutStartImpl implements LogoutStart {
  const _$LogoutStartImpl({this.pendingId = _kLogoutPendingId});

  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'Logout.start(pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutStartImpl &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutStartImplCopyWith<_$LogoutStartImpl> get copyWith =>
      __$$LogoutStartImplCopyWithImpl<_$LogoutStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutStart value) start,
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStart value)? start,
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStart value)? start,
    TResult Function(LogoutSuccessful value)? successful,
    TResult Function(LogoutError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class LogoutStart implements Logout, ActionStart {
  const factory LogoutStart({final String pendingId}) = _$LogoutStartImpl;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$LogoutStartImplCopyWith<_$LogoutStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutSuccessfulImplCopyWith<$Res> implements $LogoutCopyWith<$Res> {
  factory _$$LogoutSuccessfulImplCopyWith(_$LogoutSuccessfulImpl value, $Res Function(_$LogoutSuccessfulImpl) then) =
      __$$LogoutSuccessfulImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class __$$LogoutSuccessfulImplCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res, _$LogoutSuccessfulImpl>
    implements _$$LogoutSuccessfulImplCopyWith<$Res> {
  __$$LogoutSuccessfulImplCopyWithImpl(_$LogoutSuccessfulImpl _value, $Res Function(_$LogoutSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_$LogoutSuccessfulImpl(
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogoutSuccessfulImpl implements LogoutSuccessful {
  const _$LogoutSuccessfulImpl([this.pendingId = _kLogoutPendingId]);

  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'Logout.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutSuccessfulImpl &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutSuccessfulImplCopyWith<_$LogoutSuccessfulImpl> get copyWith =>
      __$$LogoutSuccessfulImplCopyWithImpl<_$LogoutSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutStart value) start,
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStart value)? start,
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStart value)? start,
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

abstract class LogoutSuccessful implements Logout, ActionDone {
  const factory LogoutSuccessful([final String pendingId]) = _$LogoutSuccessfulImpl;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$LogoutSuccessfulImplCopyWith<_$LogoutSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutErrorImplCopyWith<$Res> implements $LogoutCopyWith<$Res> {
  factory _$$LogoutErrorImplCopyWith(_$LogoutErrorImpl value, $Res Function(_$LogoutErrorImpl) then) =
      __$$LogoutErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$LogoutErrorImplCopyWithImpl<$Res> extends _$LogoutCopyWithImpl<$Res, _$LogoutErrorImpl>
    implements _$$LogoutErrorImplCopyWith<$Res> {
  __$$LogoutErrorImplCopyWithImpl(_$LogoutErrorImpl _value, $Res Function(_$LogoutErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
    Object? pendingId = null,
  }) {
    return _then(_$LogoutErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogoutErrorImpl implements LogoutError {
  const _$LogoutErrorImpl(this.error, this.stackTrace, [this.pendingId = _kLogoutPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'Logout.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutErrorImplCopyWith<_$LogoutErrorImpl> get copyWith =>
      __$$LogoutErrorImplCopyWithImpl<_$LogoutErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogoutStart value) start,
    required TResult Function(LogoutSuccessful value) successful,
    required TResult Function(LogoutError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogoutStart value)? start,
    TResult? Function(LogoutSuccessful value)? successful,
    TResult? Function(LogoutError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogoutStart value)? start,
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

abstract class LogoutError implements Logout, ActionDone, ErrorAction {
  const factory LogoutError(final Object error, final StackTrace stackTrace, [final String pendingId]) =
      _$LogoutErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$LogoutErrorImplCopyWith<_$LogoutErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetProducts {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult onResult) $default, {
    required TResult Function(List<Product> products) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult onResult)? $default, {
    TResult? Function(List<Product> products)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult onResult)? $default, {
    TResult Function(List<Product> products)? successful,
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
  factory $GetProductsCopyWith(GetProducts value, $Res Function(GetProducts) then) =
      _$GetProductsCopyWithImpl<$Res, GetProducts>;
}

/// @nodoc
class _$GetProductsCopyWithImpl<$Res, $Val extends GetProducts> implements $GetProductsCopyWith<$Res> {
  _$GetProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProductsStartImplCopyWith<$Res> {
  factory _$$GetProductsStartImplCopyWith(_$GetProductsStartImpl value, $Res Function(_$GetProductsStartImpl) then) =
      __$$GetProductsStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActionResult onResult});
}

/// @nodoc
class __$$GetProductsStartImplCopyWithImpl<$Res> extends _$GetProductsCopyWithImpl<$Res, _$GetProductsStartImpl>
    implements _$$GetProductsStartImplCopyWith<$Res> {
  __$$GetProductsStartImplCopyWithImpl(_$GetProductsStartImpl _value, $Res Function(_$GetProductsStartImpl) _then)
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
            (identical(other.onResult, onResult) || other.onResult == onResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsStartImplCopyWith<_$GetProductsStartImpl> get copyWith =>
      __$$GetProductsStartImplCopyWithImpl<_$GetProductsStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult onResult) $default, {
    required TResult Function(List<Product> products) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(onResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult onResult)? $default, {
    TResult? Function(List<Product> products)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(onResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult onResult)? $default, {
    TResult Function(List<Product> products)? successful,
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
  const factory GetProductsStart(final ActionResult onResult) = _$GetProductsStartImpl;

  ActionResult get onResult;
  @JsonKey(ignore: true)
  _$$GetProductsStartImplCopyWith<_$GetProductsStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsSuccessfulImplCopyWith<$Res> {
  factory _$$GetProductsSuccessfulImplCopyWith(
          _$GetProductsSuccessfulImpl value, $Res Function(_$GetProductsSuccessfulImpl) then) =
      __$$GetProductsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$GetProductsSuccessfulImplCopyWithImpl<$Res>
    extends _$GetProductsCopyWithImpl<$Res, _$GetProductsSuccessfulImpl>
    implements _$$GetProductsSuccessfulImplCopyWith<$Res> {
  __$$GetProductsSuccessfulImplCopyWithImpl(
      _$GetProductsSuccessfulImpl _value, $Res Function(_$GetProductsSuccessfulImpl) _then)
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
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$GetProductsSuccessfulImpl implements GetProductsSuccessful {
  const _$GetProductsSuccessfulImpl(final List<Product> products) : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
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
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsSuccessfulImplCopyWith<_$GetProductsSuccessfulImpl> get copyWith =>
      __$$GetProductsSuccessfulImplCopyWithImpl<_$GetProductsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult onResult) $default, {
    required TResult Function(List<Product> products) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult onResult)? $default, {
    TResult? Function(List<Product> products)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult onResult)? $default, {
    TResult Function(List<Product> products)? successful,
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
  const factory GetProductsSuccessful(final List<Product> products) = _$GetProductsSuccessfulImpl;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$$GetProductsSuccessfulImplCopyWith<_$GetProductsSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsErrorImplCopyWith<$Res> {
  factory _$$GetProductsErrorImplCopyWith(_$GetProductsErrorImpl value, $Res Function(_$GetProductsErrorImpl) then) =
      __$$GetProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetProductsErrorImplCopyWithImpl<$Res> extends _$GetProductsCopyWithImpl<$Res, _$GetProductsErrorImpl>
    implements _$$GetProductsErrorImplCopyWith<$Res> {
  __$$GetProductsErrorImplCopyWithImpl(_$GetProductsErrorImpl _value, $Res Function(_$GetProductsErrorImpl) _then)
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
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsErrorImplCopyWith<_$GetProductsErrorImpl> get copyWith =>
      __$$GetProductsErrorImplCopyWithImpl<_$GetProductsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ActionResult onResult) $default, {
    required TResult Function(List<Product> products) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(ActionResult onResult)? $default, {
    TResult? Function(List<Product> products)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ActionResult onResult)? $default, {
    TResult Function(List<Product> products)? successful,
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
  const factory GetProductsError(final Object error, final StackTrace stackTrace) = _$GetProductsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetProductsErrorImplCopyWith<_$GetProductsErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetGroceryLists {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(Set<GroceryList> groceryLists, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pendingId)? start,
    TResult? Function(Set<GroceryList> groceryLists, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(Set<GroceryList> groceryLists, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroceryListsStart value) start,
    required TResult Function(GetGroceryListsSuccessful value) successful,
    required TResult Function(GetGroceryListsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGroceryListsStart value)? start,
    TResult? Function(GetGroceryListsSuccessful value)? successful,
    TResult? Function(GetGroceryListsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroceryListsStart value)? start,
    TResult Function(GetGroceryListsSuccessful value)? successful,
    TResult Function(GetGroceryListsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetGroceryListsCopyWith<GetGroceryLists> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGroceryListsCopyWith<$Res> {
  factory $GetGroceryListsCopyWith(GetGroceryLists value, $Res Function(GetGroceryLists) then) =
      _$GetGroceryListsCopyWithImpl<$Res, GetGroceryLists>;
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class _$GetGroceryListsCopyWithImpl<$Res, $Val extends GetGroceryLists> implements $GetGroceryListsCopyWith<$Res> {
  _$GetGroceryListsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_value.copyWith(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetGroceryListsStartImplCopyWith<$Res> implements $GetGroceryListsCopyWith<$Res> {
  factory _$$GetGroceryListsStartImplCopyWith(
          _$GetGroceryListsStartImpl value, $Res Function(_$GetGroceryListsStartImpl) then) =
      __$$GetGroceryListsStartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class __$$GetGroceryListsStartImplCopyWithImpl<$Res>
    extends _$GetGroceryListsCopyWithImpl<$Res, _$GetGroceryListsStartImpl>
    implements _$$GetGroceryListsStartImplCopyWith<$Res> {
  __$$GetGroceryListsStartImplCopyWithImpl(
      _$GetGroceryListsStartImpl _value, $Res Function(_$GetGroceryListsStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_$GetGroceryListsStartImpl(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetGroceryListsStartImpl implements GetGroceryListsStart {
  const _$GetGroceryListsStartImpl({this.pendingId = _kGetGroceryListsPendingId});

  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetGroceryLists.start(pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroceryListsStartImpl &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroceryListsStartImplCopyWith<_$GetGroceryListsStartImpl> get copyWith =>
      __$$GetGroceryListsStartImplCopyWithImpl<_$GetGroceryListsStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(Set<GroceryList> groceryLists, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pendingId)? start,
    TResult? Function(Set<GroceryList> groceryLists, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(Set<GroceryList> groceryLists, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroceryListsStart value) start,
    required TResult Function(GetGroceryListsSuccessful value) successful,
    required TResult Function(GetGroceryListsError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGroceryListsStart value)? start,
    TResult? Function(GetGroceryListsSuccessful value)? successful,
    TResult? Function(GetGroceryListsError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroceryListsStart value)? start,
    TResult Function(GetGroceryListsSuccessful value)? successful,
    TResult Function(GetGroceryListsError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetGroceryListsStart implements GetGroceryLists, ActionStart {
  const factory GetGroceryListsStart({final String pendingId}) = _$GetGroceryListsStartImpl;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$GetGroceryListsStartImplCopyWith<_$GetGroceryListsStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGroceryListsSuccessfulImplCopyWith<$Res> implements $GetGroceryListsCopyWith<$Res> {
  factory _$$GetGroceryListsSuccessfulImplCopyWith(
          _$GetGroceryListsSuccessfulImpl value, $Res Function(_$GetGroceryListsSuccessfulImpl) then) =
      __$$GetGroceryListsSuccessfulImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<GroceryList> groceryLists, String pendingId});
}

/// @nodoc
class __$$GetGroceryListsSuccessfulImplCopyWithImpl<$Res>
    extends _$GetGroceryListsCopyWithImpl<$Res, _$GetGroceryListsSuccessfulImpl>
    implements _$$GetGroceryListsSuccessfulImplCopyWith<$Res> {
  __$$GetGroceryListsSuccessfulImplCopyWithImpl(
      _$GetGroceryListsSuccessfulImpl _value, $Res Function(_$GetGroceryListsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryLists = null,
    Object? pendingId = null,
  }) {
    return _then(_$GetGroceryListsSuccessfulImpl(
      null == groceryLists
          ? _value._groceryLists
          : groceryLists // ignore: cast_nullable_to_non_nullable
              as Set<GroceryList>,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetGroceryListsSuccessfulImpl implements GetGroceryListsSuccessful {
  const _$GetGroceryListsSuccessfulImpl(final Set<GroceryList> groceryLists,
      [this.pendingId = _kGetGroceryListsPendingId])
      : _groceryLists = groceryLists;

  final Set<GroceryList> _groceryLists;
  @override
  Set<GroceryList> get groceryLists {
    if (_groceryLists is EqualUnmodifiableSetView) return _groceryLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_groceryLists);
  }

  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetGroceryLists.successful(groceryLists: $groceryLists, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroceryListsSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._groceryLists, _groceryLists) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_groceryLists), pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroceryListsSuccessfulImplCopyWith<_$GetGroceryListsSuccessfulImpl> get copyWith =>
      __$$GetGroceryListsSuccessfulImplCopyWithImpl<_$GetGroceryListsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(Set<GroceryList> groceryLists, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(groceryLists, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pendingId)? start,
    TResult? Function(Set<GroceryList> groceryLists, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(groceryLists, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(Set<GroceryList> groceryLists, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(groceryLists, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroceryListsStart value) start,
    required TResult Function(GetGroceryListsSuccessful value) successful,
    required TResult Function(GetGroceryListsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGroceryListsStart value)? start,
    TResult? Function(GetGroceryListsSuccessful value)? successful,
    TResult? Function(GetGroceryListsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroceryListsStart value)? start,
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

abstract class GetGroceryListsSuccessful implements GetGroceryLists, ActionDone {
  const factory GetGroceryListsSuccessful(final Set<GroceryList> groceryLists, [final String pendingId]) =
      _$GetGroceryListsSuccessfulImpl;

  Set<GroceryList> get groceryLists;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$GetGroceryListsSuccessfulImplCopyWith<_$GetGroceryListsSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGroceryListsErrorImplCopyWith<$Res> implements $GetGroceryListsCopyWith<$Res> {
  factory _$$GetGroceryListsErrorImplCopyWith(
          _$GetGroceryListsErrorImpl value, $Res Function(_$GetGroceryListsErrorImpl) then) =
      __$$GetGroceryListsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$GetGroceryListsErrorImplCopyWithImpl<$Res>
    extends _$GetGroceryListsCopyWithImpl<$Res, _$GetGroceryListsErrorImpl>
    implements _$$GetGroceryListsErrorImplCopyWith<$Res> {
  __$$GetGroceryListsErrorImplCopyWithImpl(
      _$GetGroceryListsErrorImpl _value, $Res Function(_$GetGroceryListsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
    Object? pendingId = null,
  }) {
    return _then(_$GetGroceryListsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetGroceryListsErrorImpl implements GetGroceryListsError {
  const _$GetGroceryListsErrorImpl(this.error, this.stackTrace, [this.pendingId = _kGetGroceryListsPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetGroceryLists.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroceryListsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroceryListsErrorImplCopyWith<_$GetGroceryListsErrorImpl> get copyWith =>
      __$$GetGroceryListsErrorImplCopyWithImpl<_$GetGroceryListsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(Set<GroceryList> groceryLists, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pendingId)? start,
    TResult? Function(Set<GroceryList> groceryLists, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(Set<GroceryList> groceryLists, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroceryListsStart value) start,
    required TResult Function(GetGroceryListsSuccessful value) successful,
    required TResult Function(GetGroceryListsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGroceryListsStart value)? start,
    TResult? Function(GetGroceryListsSuccessful value)? successful,
    TResult? Function(GetGroceryListsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroceryListsStart value)? start,
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

abstract class GetGroceryListsError implements GetGroceryLists, ActionDone, ErrorAction {
  const factory GetGroceryListsError(final Object error, final StackTrace stackTrace, [final String pendingId]) =
      _$GetGroceryListsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$GetGroceryListsErrorImplCopyWith<_$GetGroceryListsErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateGroceryList {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon) $default, {
    required TResult Function(GroceryList groceryList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String title, String description, String selectedIcon)? $default, {
    TResult? Function(GroceryList groceryList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)? $default, {
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
  factory $CreateGroceryListCopyWith(CreateGroceryList value, $Res Function(CreateGroceryList) then) =
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
          _$CreateGroceryListStartImpl value, $Res Function(_$CreateGroceryListStartImpl) then) =
      __$$CreateGroceryListStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, String selectedIcon});
}

/// @nodoc
class __$$CreateGroceryListStartImplCopyWithImpl<$Res>
    extends _$CreateGroceryListCopyWithImpl<$Res, _$CreateGroceryListStartImpl>
    implements _$$CreateGroceryListStartImplCopyWith<$Res> {
  __$$CreateGroceryListStartImplCopyWithImpl(
      _$CreateGroceryListStartImpl _value, $Res Function(_$CreateGroceryListStartImpl) _then)
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
  const _$CreateGroceryListStartImpl({required this.title, required this.description, required this.selectedIcon});

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
            (identical(other.description, description) || other.description == description) &&
            (identical(other.selectedIcon, selectedIcon) || other.selectedIcon == selectedIcon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, selectedIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroceryListStartImplCopyWith<_$CreateGroceryListStartImpl> get copyWith =>
      __$$CreateGroceryListStartImplCopyWithImpl<_$CreateGroceryListStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon) $default, {
    required TResult Function(GroceryList groceryList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(title, description, selectedIcon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String title, String description, String selectedIcon)? $default, {
    TResult? Function(GroceryList groceryList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(title, description, selectedIcon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)? $default, {
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
  _$$CreateGroceryListStartImplCopyWith<_$CreateGroceryListStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateGroceryListSuccessfulImplCopyWith<$Res> {
  factory _$$CreateGroceryListSuccessfulImplCopyWith(
          _$CreateGroceryListSuccessfulImpl value, $Res Function(_$CreateGroceryListSuccessfulImpl) then) =
      __$$CreateGroceryListSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GroceryList groceryList});

  $GroceryListCopyWith<$Res> get groceryList;
}

/// @nodoc
class __$$CreateGroceryListSuccessfulImplCopyWithImpl<$Res>
    extends _$CreateGroceryListCopyWithImpl<$Res, _$CreateGroceryListSuccessfulImpl>
    implements _$$CreateGroceryListSuccessfulImplCopyWith<$Res> {
  __$$CreateGroceryListSuccessfulImplCopyWithImpl(
      _$CreateGroceryListSuccessfulImpl _value, $Res Function(_$CreateGroceryListSuccessfulImpl) _then)
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
            (identical(other.groceryList, groceryList) || other.groceryList == groceryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroceryListSuccessfulImplCopyWith<_$CreateGroceryListSuccessfulImpl> get copyWith =>
      __$$CreateGroceryListSuccessfulImplCopyWithImpl<_$CreateGroceryListSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon) $default, {
    required TResult Function(GroceryList groceryList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(groceryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String title, String description, String selectedIcon)? $default, {
    TResult? Function(GroceryList groceryList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(groceryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)? $default, {
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
  const factory CreateGroceryListSuccessful(final GroceryList groceryList) = _$CreateGroceryListSuccessfulImpl;

  GroceryList get groceryList;
  @JsonKey(ignore: true)
  _$$CreateGroceryListSuccessfulImplCopyWith<_$CreateGroceryListSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateGroceryListErrorImplCopyWith<$Res> {
  factory _$$CreateGroceryListErrorImplCopyWith(
          _$CreateGroceryListErrorImpl value, $Res Function(_$CreateGroceryListErrorImpl) then) =
      __$$CreateGroceryListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateGroceryListErrorImplCopyWithImpl<$Res>
    extends _$CreateGroceryListCopyWithImpl<$Res, _$CreateGroceryListErrorImpl>
    implements _$$CreateGroceryListErrorImplCopyWith<$Res> {
  __$$CreateGroceryListErrorImplCopyWithImpl(
      _$CreateGroceryListErrorImpl _value, $Res Function(_$CreateGroceryListErrorImpl) _then)
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
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroceryListErrorImplCopyWith<_$CreateGroceryListErrorImpl> get copyWith =>
      __$$CreateGroceryListErrorImplCopyWithImpl<_$CreateGroceryListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon) $default, {
    required TResult Function(GroceryList groceryList) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String title, String description, String selectedIcon)? $default, {
    TResult? Function(GroceryList groceryList)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String title, String description, String selectedIcon)? $default, {
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

abstract class CreateGroceryListError implements CreateGroceryList, ErrorAction {
  const factory CreateGroceryListError(final Object error, final StackTrace stackTrace) = _$CreateGroceryListErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreateGroceryListErrorImplCopyWith<_$CreateGroceryListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListenForProducts {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groceryListTitle, String pendingId) start,
    required TResult Function(String groceryListTitle, String pendingId) done,
    required TResult Function(List<Product> products, String pendingId) event,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groceryListTitle, String pendingId)? start,
    TResult? Function(String groceryListTitle, String pendingId)? done,
    TResult? Function(List<Product> products, String pendingId)? event,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groceryListTitle, String pendingId)? start,
    TResult Function(String groceryListTitle, String pendingId)? done,
    TResult Function(List<Product> products, String pendingId)? event,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
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

  @JsonKey(ignore: true)
  $ListenForProductsCopyWith<ListenForProducts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenForProductsCopyWith<$Res> {
  factory $ListenForProductsCopyWith(ListenForProducts value, $Res Function(ListenForProducts) then) =
      _$ListenForProductsCopyWithImpl<$Res, ListenForProducts>;
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class _$ListenForProductsCopyWithImpl<$Res, $Val extends ListenForProducts>
    implements $ListenForProductsCopyWith<$Res> {
  _$ListenForProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_value.copyWith(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListenForProductsStartImplCopyWith<$Res> implements $ListenForProductsCopyWith<$Res> {
  factory _$$ListenForProductsStartImplCopyWith(
          _$ListenForProductsStartImpl value, $Res Function(_$ListenForProductsStartImpl) then) =
      __$$ListenForProductsStartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groceryListTitle, String pendingId});
}

/// @nodoc
class __$$ListenForProductsStartImplCopyWithImpl<$Res>
    extends _$ListenForProductsCopyWithImpl<$Res, _$ListenForProductsStartImpl>
    implements _$$ListenForProductsStartImplCopyWith<$Res> {
  __$$ListenForProductsStartImplCopyWithImpl(
      _$ListenForProductsStartImpl _value, $Res Function(_$ListenForProductsStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryListTitle = null,
    Object? pendingId = null,
  }) {
    return _then(_$ListenForProductsStartImpl(
      null == groceryListTitle
          ? _value.groceryListTitle
          : groceryListTitle // ignore: cast_nullable_to_non_nullable
              as String,
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListenForProductsStartImpl implements ListenForProductsStart {
  const _$ListenForProductsStartImpl(this.groceryListTitle, {this.pendingId = _kListenForProductsPendingId});

  @override
  final String groceryListTitle;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'ListenForProducts.start(groceryListTitle: $groceryListTitle, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenForProductsStartImpl &&
            (identical(other.groceryListTitle, groceryListTitle) || other.groceryListTitle == groceryListTitle) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryListTitle, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenForProductsStartImplCopyWith<_$ListenForProductsStartImpl> get copyWith =>
      __$$ListenForProductsStartImplCopyWithImpl<_$ListenForProductsStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groceryListTitle, String pendingId) start,
    required TResult Function(String groceryListTitle, String pendingId) done,
    required TResult Function(List<Product> products, String pendingId) event,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(groceryListTitle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groceryListTitle, String pendingId)? start,
    TResult? Function(String groceryListTitle, String pendingId)? done,
    TResult? Function(List<Product> products, String pendingId)? event,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(groceryListTitle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groceryListTitle, String pendingId)? start,
    TResult Function(String groceryListTitle, String pendingId)? done,
    TResult Function(List<Product> products, String pendingId)? event,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(groceryListTitle, pendingId);
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

abstract class ListenForProductsStart implements ListenForProducts, ActionStart {
  const factory ListenForProductsStart(final String groceryListTitle, {final String pendingId}) =
      _$ListenForProductsStartImpl;

  String get groceryListTitle;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$ListenForProductsStartImplCopyWith<_$ListenForProductsStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListenForProductsDoneImplCopyWith<$Res> implements $ListenForProductsCopyWith<$Res> {
  factory _$$ListenForProductsDoneImplCopyWith(
          _$ListenForProductsDoneImpl value, $Res Function(_$ListenForProductsDoneImpl) then) =
      __$$ListenForProductsDoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groceryListTitle, String pendingId});
}

/// @nodoc
class __$$ListenForProductsDoneImplCopyWithImpl<$Res>
    extends _$ListenForProductsCopyWithImpl<$Res, _$ListenForProductsDoneImpl>
    implements _$$ListenForProductsDoneImplCopyWith<$Res> {
  __$$ListenForProductsDoneImplCopyWithImpl(
      _$ListenForProductsDoneImpl _value, $Res Function(_$ListenForProductsDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groceryListTitle = null,
    Object? pendingId = null,
  }) {
    return _then(_$ListenForProductsDoneImpl(
      null == groceryListTitle
          ? _value.groceryListTitle
          : groceryListTitle // ignore: cast_nullable_to_non_nullable
              as String,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListenForProductsDoneImpl implements ListenForProductsDone {
  const _$ListenForProductsDoneImpl(this.groceryListTitle, [this.pendingId = _kListenForProductsPendingId]);

  @override
  final String groceryListTitle;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'ListenForProducts.done(groceryListTitle: $groceryListTitle, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenForProductsDoneImpl &&
            (identical(other.groceryListTitle, groceryListTitle) || other.groceryListTitle == groceryListTitle) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groceryListTitle, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenForProductsDoneImplCopyWith<_$ListenForProductsDoneImpl> get copyWith =>
      __$$ListenForProductsDoneImplCopyWithImpl<_$ListenForProductsDoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groceryListTitle, String pendingId) start,
    required TResult Function(String groceryListTitle, String pendingId) done,
    required TResult Function(List<Product> products, String pendingId) event,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return done(groceryListTitle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groceryListTitle, String pendingId)? start,
    TResult? Function(String groceryListTitle, String pendingId)? done,
    TResult? Function(List<Product> products, String pendingId)? event,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return done?.call(groceryListTitle, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groceryListTitle, String pendingId)? start,
    TResult Function(String groceryListTitle, String pendingId)? done,
    TResult Function(List<Product> products, String pendingId)? event,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(groceryListTitle, pendingId);
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

abstract class ListenForProductsDone implements ListenForProducts, ActionDone {
  const factory ListenForProductsDone(final String groceryListTitle, [final String pendingId]) =
      _$ListenForProductsDoneImpl;

  String get groceryListTitle;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$ListenForProductsDoneImplCopyWith<_$ListenForProductsDoneImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnProductsEventImplCopyWith<$Res> implements $ListenForProductsCopyWith<$Res> {
  factory _$$OnProductsEventImplCopyWith(_$OnProductsEventImpl value, $Res Function(_$OnProductsEventImpl) then) =
      __$$OnProductsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> products, String pendingId});
}

/// @nodoc
class __$$OnProductsEventImplCopyWithImpl<$Res> extends _$ListenForProductsCopyWithImpl<$Res, _$OnProductsEventImpl>
    implements _$$OnProductsEventImplCopyWith<$Res> {
  __$$OnProductsEventImplCopyWithImpl(_$OnProductsEventImpl _value, $Res Function(_$OnProductsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? pendingId = null,
  }) {
    return _then(_$OnProductsEventImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnProductsEventImpl implements OnProductsEvent {
  const _$OnProductsEventImpl(final List<Product> products, [this.pendingId = _kListenForProductsPendingId])
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'ListenForProducts.event(products: $products, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnProductsEventImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_products), pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnProductsEventImplCopyWith<_$OnProductsEventImpl> get copyWith =>
      __$$OnProductsEventImplCopyWithImpl<_$OnProductsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groceryListTitle, String pendingId) start,
    required TResult Function(String groceryListTitle, String pendingId) done,
    required TResult Function(List<Product> products, String pendingId) event,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return event(products, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groceryListTitle, String pendingId)? start,
    TResult? Function(String groceryListTitle, String pendingId)? done,
    TResult? Function(List<Product> products, String pendingId)? event,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return event?.call(products, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groceryListTitle, String pendingId)? start,
    TResult Function(String groceryListTitle, String pendingId)? done,
    TResult Function(List<Product> products, String pendingId)? event,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(products, pendingId);
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

abstract class OnProductsEvent implements ListenForProducts, ActionDone {
  const factory OnProductsEvent(final List<Product> products, [final String pendingId]) = _$OnProductsEventImpl;

  List<Product> get products;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$OnProductsEventImplCopyWith<_$OnProductsEventImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListenForProductsErrorImplCopyWith<$Res> implements $ListenForProductsCopyWith<$Res> {
  factory _$$ListenForProductsErrorImplCopyWith(
          _$ListenForProductsErrorImpl value, $Res Function(_$ListenForProductsErrorImpl) then) =
      __$$ListenForProductsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$ListenForProductsErrorImplCopyWithImpl<$Res>
    extends _$ListenForProductsCopyWithImpl<$Res, _$ListenForProductsErrorImpl>
    implements _$$ListenForProductsErrorImplCopyWith<$Res> {
  __$$ListenForProductsErrorImplCopyWithImpl(
      _$ListenForProductsErrorImpl _value, $Res Function(_$ListenForProductsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
    Object? pendingId = null,
  }) {
    return _then(_$ListenForProductsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListenForProductsErrorImpl implements _ListenForProductsError {
  const _$ListenForProductsErrorImpl(this.error, this.stackTrace, [this.pendingId = _kListenForProductsPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'ListenForProducts.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenForProductsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenForProductsErrorImplCopyWith<_$ListenForProductsErrorImpl> get copyWith =>
      __$$ListenForProductsErrorImplCopyWithImpl<_$ListenForProductsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groceryListTitle, String pendingId) start,
    required TResult Function(String groceryListTitle, String pendingId) done,
    required TResult Function(List<Product> products, String pendingId) event,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groceryListTitle, String pendingId)? start,
    TResult? Function(String groceryListTitle, String pendingId)? done,
    TResult? Function(List<Product> products, String pendingId)? event,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groceryListTitle, String pendingId)? start,
    TResult Function(String groceryListTitle, String pendingId)? done,
    TResult Function(List<Product> products, String pendingId)? event,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
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

abstract class _ListenForProductsError implements ListenForProducts, ActionDone, ErrorAction {
  const factory _ListenForProductsError(final Object error, final StackTrace stackTrace, [final String pendingId]) =
      _$ListenForProductsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$ListenForProductsErrorImplCopyWith<_$ListenForProductsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetSelectedList {
  String get selectedGroceryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedListCopyWith<SetSelectedList> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedListCopyWith<$Res> {
  factory $SetSelectedListCopyWith(SetSelectedList value, $Res Function(SetSelectedList) then) =
      _$SetSelectedListCopyWithImpl<$Res, SetSelectedList>;
  @useResult
  $Res call({String selectedGroceryList});
}

/// @nodoc
class _$SetSelectedListCopyWithImpl<$Res, $Val extends SetSelectedList> implements $SetSelectedListCopyWith<$Res> {
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
abstract class _$$SetSelectedList$ImplCopyWith<$Res> implements $SetSelectedListCopyWith<$Res> {
  factory _$$SetSelectedList$ImplCopyWith(_$SetSelectedList$Impl value, $Res Function(_$SetSelectedList$Impl) then) =
      __$$SetSelectedList$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedGroceryList});
}

/// @nodoc
class __$$SetSelectedList$ImplCopyWithImpl<$Res> extends _$SetSelectedListCopyWithImpl<$Res, _$SetSelectedList$Impl>
    implements _$$SetSelectedList$ImplCopyWith<$Res> {
  __$$SetSelectedList$ImplCopyWithImpl(_$SetSelectedList$Impl _value, $Res Function(_$SetSelectedList$Impl) _then)
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
      __$$SetSelectedList$ImplCopyWithImpl<_$SetSelectedList$Impl>(this, _$identity);
}

abstract class SetSelectedList$ implements SetSelectedList {
  const factory SetSelectedList$(final String selectedGroceryList) = _$SetSelectedList$Impl;

  @override
  String get selectedGroceryList;
  @override
  @JsonKey(ignore: true)
  _$$SetSelectedList$ImplCopyWith<_$SetSelectedList$Impl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetUnselectedList {}

/// @nodoc
abstract class $SetUnselectedListCopyWith<$Res> {
  factory $SetUnselectedListCopyWith(SetUnselectedList value, $Res Function(SetUnselectedList) then) =
      _$SetUnselectedListCopyWithImpl<$Res, SetUnselectedList>;
}

/// @nodoc
class _$SetUnselectedListCopyWithImpl<$Res, $Val extends SetUnselectedList>
    implements $SetUnselectedListCopyWith<$Res> {
  _$SetUnselectedListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetUnselectedList$ImplCopyWith<$Res> {
  factory _$$SetUnselectedList$ImplCopyWith(
          _$SetUnselectedList$Impl value, $Res Function(_$SetUnselectedList$Impl) then) =
      __$$SetUnselectedList$ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetUnselectedList$ImplCopyWithImpl<$Res>
    extends _$SetUnselectedListCopyWithImpl<$Res, _$SetUnselectedList$Impl>
    implements _$$SetUnselectedList$ImplCopyWith<$Res> {
  __$$SetUnselectedList$ImplCopyWithImpl(_$SetUnselectedList$Impl _value, $Res Function(_$SetUnselectedList$Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetUnselectedList$Impl implements SetUnselectedList$ {
  const _$SetUnselectedList$Impl();

  @override
  String toString() {
    return 'SetUnselectedList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SetUnselectedList$Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SetUnselectedList$ implements SetUnselectedList {
  const factory SetUnselectedList$() = _$SetUnselectedList$Impl;
}

/// @nodoc
mixin _$SetUserProductsToEmpty {}

/// @nodoc
abstract class $SetUserProductsToEmptyCopyWith<$Res> {
  factory $SetUserProductsToEmptyCopyWith(SetUserProductsToEmpty value, $Res Function(SetUserProductsToEmpty) then) =
      _$SetUserProductsToEmptyCopyWithImpl<$Res, SetUserProductsToEmpty>;
}

/// @nodoc
class _$SetUserProductsToEmptyCopyWithImpl<$Res, $Val extends SetUserProductsToEmpty>
    implements $SetUserProductsToEmptyCopyWith<$Res> {
  _$SetUserProductsToEmptyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetUserProductsToEmpty$ImplCopyWith<$Res> {
  factory _$$SetUserProductsToEmpty$ImplCopyWith(
          _$SetUserProductsToEmpty$Impl value, $Res Function(_$SetUserProductsToEmpty$Impl) then) =
      __$$SetUserProductsToEmpty$ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetUserProductsToEmpty$ImplCopyWithImpl<$Res>
    extends _$SetUserProductsToEmptyCopyWithImpl<$Res, _$SetUserProductsToEmpty$Impl>
    implements _$$SetUserProductsToEmpty$ImplCopyWith<$Res> {
  __$$SetUserProductsToEmpty$ImplCopyWithImpl(
      _$SetUserProductsToEmpty$Impl _value, $Res Function(_$SetUserProductsToEmpty$Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetUserProductsToEmpty$Impl implements SetUserProductsToEmpty$ {
  const _$SetUserProductsToEmpty$Impl();

  @override
  String toString() {
    return 'SetUserProductsToEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SetUserProductsToEmpty$Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SetUserProductsToEmpty$ implements SetUserProductsToEmpty {
  const factory SetUserProductsToEmpty$() = _$SetUserProductsToEmpty$Impl;
}

/// @nodoc
mixin _$SetMarketProductsToEmpty {}

/// @nodoc
abstract class $SetMarketProductsToEmptyCopyWith<$Res> {
  factory $SetMarketProductsToEmptyCopyWith(
          SetMarketProductsToEmpty value, $Res Function(SetMarketProductsToEmpty) then) =
      _$SetMarketProductsToEmptyCopyWithImpl<$Res, SetMarketProductsToEmpty>;
}

/// @nodoc
class _$SetMarketProductsToEmptyCopyWithImpl<$Res, $Val extends SetMarketProductsToEmpty>
    implements $SetMarketProductsToEmptyCopyWith<$Res> {
  _$SetMarketProductsToEmptyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetMarketProductsToEmpty$ImplCopyWith<$Res> {
  factory _$$SetMarketProductsToEmpty$ImplCopyWith(
          _$SetMarketProductsToEmpty$Impl value, $Res Function(_$SetMarketProductsToEmpty$Impl) then) =
      __$$SetMarketProductsToEmpty$ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetMarketProductsToEmpty$ImplCopyWithImpl<$Res>
    extends _$SetMarketProductsToEmptyCopyWithImpl<$Res, _$SetMarketProductsToEmpty$Impl>
    implements _$$SetMarketProductsToEmpty$ImplCopyWith<$Res> {
  __$$SetMarketProductsToEmpty$ImplCopyWithImpl(
      _$SetMarketProductsToEmpty$Impl _value, $Res Function(_$SetMarketProductsToEmpty$Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetMarketProductsToEmpty$Impl implements SetMarketProductsToEmpty$ {
  const _$SetMarketProductsToEmpty$Impl();

  @override
  String toString() {
    return 'SetMarketProductsToEmpty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SetMarketProductsToEmpty$Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SetMarketProductsToEmpty$ implements SetMarketProductsToEmpty {
  const factory SetMarketProductsToEmpty$() = _$SetMarketProductsToEmpty$Impl;
}

/// @nodoc
mixin _$SetSelectedCamera {
  CameraInfo get selectedCamera => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedCameraCopyWith<SetSelectedCamera> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedCameraCopyWith<$Res> {
  factory $SetSelectedCameraCopyWith(SetSelectedCamera value, $Res Function(SetSelectedCamera) then) =
      _$SetSelectedCameraCopyWithImpl<$Res, SetSelectedCamera>;
  @useResult
  $Res call({CameraInfo selectedCamera});

  $CameraInfoCopyWith<$Res> get selectedCamera;
}

/// @nodoc
class _$SetSelectedCameraCopyWithImpl<$Res, $Val extends SetSelectedCamera>
    implements $SetSelectedCameraCopyWith<$Res> {
  _$SetSelectedCameraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCamera = null,
  }) {
    return _then(_value.copyWith(
      selectedCamera: null == selectedCamera
          ? _value.selectedCamera
          : selectedCamera // ignore: cast_nullable_to_non_nullable
              as CameraInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CameraInfoCopyWith<$Res> get selectedCamera {
    return $CameraInfoCopyWith<$Res>(_value.selectedCamera, (value) {
      return _then(_value.copyWith(selectedCamera: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetSelectedCamera$ImplCopyWith<$Res> implements $SetSelectedCameraCopyWith<$Res> {
  factory _$$SetSelectedCamera$ImplCopyWith(
          _$SetSelectedCamera$Impl value, $Res Function(_$SetSelectedCamera$Impl) then) =
      __$$SetSelectedCamera$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CameraInfo selectedCamera});

  @override
  $CameraInfoCopyWith<$Res> get selectedCamera;
}

/// @nodoc
class __$$SetSelectedCamera$ImplCopyWithImpl<$Res>
    extends _$SetSelectedCameraCopyWithImpl<$Res, _$SetSelectedCamera$Impl>
    implements _$$SetSelectedCamera$ImplCopyWith<$Res> {
  __$$SetSelectedCamera$ImplCopyWithImpl(_$SetSelectedCamera$Impl _value, $Res Function(_$SetSelectedCamera$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCamera = null,
  }) {
    return _then(_$SetSelectedCamera$Impl(
      null == selectedCamera
          ? _value.selectedCamera
          : selectedCamera // ignore: cast_nullable_to_non_nullable
              as CameraInfo,
    ));
  }
}

/// @nodoc

class _$SetSelectedCamera$Impl implements SetSelectedCamera$ {
  const _$SetSelectedCamera$Impl(this.selectedCamera);

  @override
  final CameraInfo selectedCamera;

  @override
  String toString() {
    return 'SetSelectedCamera(selectedCamera: $selectedCamera)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedCamera$Impl &&
            (identical(other.selectedCamera, selectedCamera) || other.selectedCamera == selectedCamera));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCamera);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedCamera$ImplCopyWith<_$SetSelectedCamera$Impl> get copyWith =>
      __$$SetSelectedCamera$ImplCopyWithImpl<_$SetSelectedCamera$Impl>(this, _$identity);
}

abstract class SetSelectedCamera$ implements SetSelectedCamera {
  const factory SetSelectedCamera$(final CameraInfo selectedCamera) = _$SetSelectedCamera$Impl;

  @override
  CameraInfo get selectedCamera;
  @override
  @JsonKey(ignore: true)
  _$$SetSelectedCamera$ImplCopyWith<_$SetSelectedCamera$Impl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetPictureToNull {}

/// @nodoc
abstract class $SetPictureToNullCopyWith<$Res> {
  factory $SetPictureToNullCopyWith(SetPictureToNull value, $Res Function(SetPictureToNull) then) =
      _$SetPictureToNullCopyWithImpl<$Res, SetPictureToNull>;
}

/// @nodoc
class _$SetPictureToNullCopyWithImpl<$Res, $Val extends SetPictureToNull> implements $SetPictureToNullCopyWith<$Res> {
  _$SetPictureToNullCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetPictureToNull$ImplCopyWith<$Res> {
  factory _$$SetPictureToNull$ImplCopyWith(_$SetPictureToNull$Impl value, $Res Function(_$SetPictureToNull$Impl) then) =
      __$$SetPictureToNull$ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetPictureToNull$ImplCopyWithImpl<$Res> extends _$SetPictureToNullCopyWithImpl<$Res, _$SetPictureToNull$Impl>
    implements _$$SetPictureToNull$ImplCopyWith<$Res> {
  __$$SetPictureToNull$ImplCopyWithImpl(_$SetPictureToNull$Impl _value, $Res Function(_$SetPictureToNull$Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetPictureToNull$Impl implements SetPictureToNull$ {
  const _$SetPictureToNull$Impl();

  @override
  String toString() {
    return 'SetPictureToNull()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SetPictureToNull$Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SetPictureToNull$ implements SetPictureToNull {
  const factory SetPictureToNull$() = _$SetPictureToNull$Impl;
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
  factory $CreateProductCopyWith(CreateProduct value, $Res Function(CreateProduct) then) =
      _$CreateProductCopyWithImpl<$Res, CreateProduct>;
}

/// @nodoc
class _$CreateProductCopyWithImpl<$Res, $Val extends CreateProduct> implements $CreateProductCopyWith<$Res> {
  _$CreateProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateProductStartImplCopyWith<$Res> {
  factory _$$CreateProductStartImplCopyWith(
          _$CreateProductStartImpl value, $Res Function(_$CreateProductStartImpl) then) =
      __$$CreateProductStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, double price});
}

/// @nodoc
class __$$CreateProductStartImplCopyWithImpl<$Res> extends _$CreateProductCopyWithImpl<$Res, _$CreateProductStartImpl>
    implements _$$CreateProductStartImplCopyWith<$Res> {
  __$$CreateProductStartImplCopyWithImpl(_$CreateProductStartImpl _value, $Res Function(_$CreateProductStartImpl) _then)
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
      __$$CreateProductStartImplCopyWithImpl<_$CreateProductStartImpl>(this, _$identity);

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
  const factory CreateProductStart(final String name, final double price) = _$CreateProductStartImpl;

  String get name;
  double get price;
  @JsonKey(ignore: true)
  _$$CreateProductStartImplCopyWith<_$CreateProductStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateProductSuccessfulImplCopyWith<$Res> {
  factory _$$CreateProductSuccessfulImplCopyWith(
          _$CreateProductSuccessfulImpl value, $Res Function(_$CreateProductSuccessfulImpl) then) =
      __$$CreateProductSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateProductSuccessfulImplCopyWithImpl<$Res>
    extends _$CreateProductCopyWithImpl<$Res, _$CreateProductSuccessfulImpl>
    implements _$$CreateProductSuccessfulImplCopyWith<$Res> {
  __$$CreateProductSuccessfulImplCopyWithImpl(
      _$CreateProductSuccessfulImpl _value, $Res Function(_$CreateProductSuccessfulImpl) _then)
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
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CreateProductSuccessfulImpl);
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
  factory _$$CreateProductErrorImplCopyWith(
          _$CreateProductErrorImpl value, $Res Function(_$CreateProductErrorImpl) then) =
      __$$CreateProductErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$CreateProductErrorImplCopyWithImpl<$Res> extends _$CreateProductCopyWithImpl<$Res, _$CreateProductErrorImpl>
    implements _$$CreateProductErrorImplCopyWith<$Res> {
  __$$CreateProductErrorImplCopyWithImpl(_$CreateProductErrorImpl _value, $Res Function(_$CreateProductErrorImpl) _then)
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
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProductErrorImplCopyWith<_$CreateProductErrorImpl> get copyWith =>
      __$$CreateProductErrorImplCopyWithImpl<_$CreateProductErrorImpl>(this, _$identity);

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
  const factory CreateProductError(final Object error, final StackTrace stackTrace) = _$CreateProductErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$CreateProductErrorImplCopyWith<_$CreateProductErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetSuperMarketProducts {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId) start,
    required TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId) more,
    required TResult Function(List<Product> supermarketProducts, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionResult onResult, String supermarketName, String category, String pendingId)? start,
    TResult? Function(ActionResult onResult, String supermarketName, String category, String pendingId)? more,
    TResult? Function(List<Product> supermarketProducts, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId)? start,
    TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId)? more,
    TResult Function(List<Product> supermarketProducts, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuperMarketProductsStart value) start,
    required TResult Function(GetSuperMarketProductsMore value) more,
    required TResult Function(GetSuperMarketProductsSuccessful value) successful,
    required TResult Function(GetSuperMarketProductsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuperMarketProductsStart value)? start,
    TResult? Function(GetSuperMarketProductsMore value)? more,
    TResult? Function(GetSuperMarketProductsSuccessful value)? successful,
    TResult? Function(GetSuperMarketProductsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuperMarketProductsStart value)? start,
    TResult Function(GetSuperMarketProductsMore value)? more,
    TResult Function(GetSuperMarketProductsSuccessful value)? successful,
    TResult Function(GetSuperMarketProductsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetSuperMarketProductsCopyWith<GetSuperMarketProducts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSuperMarketProductsCopyWith<$Res> {
  factory $GetSuperMarketProductsCopyWith(GetSuperMarketProducts value, $Res Function(GetSuperMarketProducts) then) =
      _$GetSuperMarketProductsCopyWithImpl<$Res, GetSuperMarketProducts>;
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class _$GetSuperMarketProductsCopyWithImpl<$Res, $Val extends GetSuperMarketProducts>
    implements $GetSuperMarketProductsCopyWith<$Res> {
  _$GetSuperMarketProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_value.copyWith(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSuperMarketProductsStartImplCopyWith<$Res> implements $GetSuperMarketProductsCopyWith<$Res> {
  factory _$$GetSuperMarketProductsStartImplCopyWith(
          _$GetSuperMarketProductsStartImpl value, $Res Function(_$GetSuperMarketProductsStartImpl) then) =
      __$$GetSuperMarketProductsStartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionResult onResult, String supermarketName, String category, String pendingId});
}

/// @nodoc
class __$$GetSuperMarketProductsStartImplCopyWithImpl<$Res>
    extends _$GetSuperMarketProductsCopyWithImpl<$Res, _$GetSuperMarketProductsStartImpl>
    implements _$$GetSuperMarketProductsStartImplCopyWith<$Res> {
  __$$GetSuperMarketProductsStartImplCopyWithImpl(
      _$GetSuperMarketProductsStartImpl _value, $Res Function(_$GetSuperMarketProductsStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onResult = null,
    Object? supermarketName = null,
    Object? category = null,
    Object? pendingId = null,
  }) {
    return _then(_$GetSuperMarketProductsStartImpl(
      null == onResult
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
      supermarketName: null == supermarketName
          ? _value.supermarketName
          : supermarketName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSuperMarketProductsStartImpl implements GetSuperMarketProductsStart {
  const _$GetSuperMarketProductsStartImpl(this.onResult,
      {required this.supermarketName, required this.category, this.pendingId = _kGetSuperMarketProductsPendingId});

  @override
  final ActionResult onResult;
  @override
  final String supermarketName;
  @override
  final String category;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetSuperMarketProducts.start(onResult: $onResult, supermarketName: $supermarketName, category: $category, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSuperMarketProductsStartImpl &&
            (identical(other.onResult, onResult) || other.onResult == onResult) &&
            (identical(other.supermarketName, supermarketName) || other.supermarketName == supermarketName) &&
            (identical(other.category, category) || other.category == category) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onResult, supermarketName, category, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSuperMarketProductsStartImplCopyWith<_$GetSuperMarketProductsStartImpl> get copyWith =>
      __$$GetSuperMarketProductsStartImplCopyWithImpl<_$GetSuperMarketProductsStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId) start,
    required TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId) more,
    required TResult Function(List<Product> supermarketProducts, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(onResult, supermarketName, category, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionResult onResult, String supermarketName, String category, String pendingId)? start,
    TResult? Function(ActionResult onResult, String supermarketName, String category, String pendingId)? more,
    TResult? Function(List<Product> supermarketProducts, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(onResult, supermarketName, category, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId)? start,
    TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId)? more,
    TResult Function(List<Product> supermarketProducts, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(onResult, supermarketName, category, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuperMarketProductsStart value) start,
    required TResult Function(GetSuperMarketProductsMore value) more,
    required TResult Function(GetSuperMarketProductsSuccessful value) successful,
    required TResult Function(GetSuperMarketProductsError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuperMarketProductsStart value)? start,
    TResult? Function(GetSuperMarketProductsMore value)? more,
    TResult? Function(GetSuperMarketProductsSuccessful value)? successful,
    TResult? Function(GetSuperMarketProductsError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuperMarketProductsStart value)? start,
    TResult Function(GetSuperMarketProductsMore value)? more,
    TResult Function(GetSuperMarketProductsSuccessful value)? successful,
    TResult Function(GetSuperMarketProductsError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetSuperMarketProductsStart implements GetSuperMarketProducts, ActionStart {
  const factory GetSuperMarketProductsStart(final ActionResult onResult,
      {required final String supermarketName,
      required final String category,
      final String pendingId}) = _$GetSuperMarketProductsStartImpl;

  ActionResult get onResult;
  String get supermarketName;
  String get category;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$GetSuperMarketProductsStartImplCopyWith<_$GetSuperMarketProductsStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSuperMarketProductsMoreImplCopyWith<$Res> implements $GetSuperMarketProductsCopyWith<$Res> {
  factory _$$GetSuperMarketProductsMoreImplCopyWith(
          _$GetSuperMarketProductsMoreImpl value, $Res Function(_$GetSuperMarketProductsMoreImpl) then) =
      __$$GetSuperMarketProductsMoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionResult onResult, String supermarketName, String category, String pendingId});
}

/// @nodoc
class __$$GetSuperMarketProductsMoreImplCopyWithImpl<$Res>
    extends _$GetSuperMarketProductsCopyWithImpl<$Res, _$GetSuperMarketProductsMoreImpl>
    implements _$$GetSuperMarketProductsMoreImplCopyWith<$Res> {
  __$$GetSuperMarketProductsMoreImplCopyWithImpl(
      _$GetSuperMarketProductsMoreImpl _value, $Res Function(_$GetSuperMarketProductsMoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onResult = null,
    Object? supermarketName = null,
    Object? category = null,
    Object? pendingId = null,
  }) {
    return _then(_$GetSuperMarketProductsMoreImpl(
      null == onResult
          ? _value.onResult
          : onResult // ignore: cast_nullable_to_non_nullable
              as ActionResult,
      supermarketName: null == supermarketName
          ? _value.supermarketName
          : supermarketName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSuperMarketProductsMoreImpl implements GetSuperMarketProductsMore {
  const _$GetSuperMarketProductsMoreImpl(this.onResult,
      {required this.supermarketName, required this.category, this.pendingId = _kGetSuperMarketProductsPendingId});

  @override
  final ActionResult onResult;
  @override
  final String supermarketName;
  @override
  final String category;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetSuperMarketProducts.more(onResult: $onResult, supermarketName: $supermarketName, category: $category, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSuperMarketProductsMoreImpl &&
            (identical(other.onResult, onResult) || other.onResult == onResult) &&
            (identical(other.supermarketName, supermarketName) || other.supermarketName == supermarketName) &&
            (identical(other.category, category) || other.category == category) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onResult, supermarketName, category, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSuperMarketProductsMoreImplCopyWith<_$GetSuperMarketProductsMoreImpl> get copyWith =>
      __$$GetSuperMarketProductsMoreImplCopyWithImpl<_$GetSuperMarketProductsMoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId) start,
    required TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId) more,
    required TResult Function(List<Product> supermarketProducts, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return more(onResult, supermarketName, category, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionResult onResult, String supermarketName, String category, String pendingId)? start,
    TResult? Function(ActionResult onResult, String supermarketName, String category, String pendingId)? more,
    TResult? Function(List<Product> supermarketProducts, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return more?.call(onResult, supermarketName, category, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId)? start,
    TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId)? more,
    TResult Function(List<Product> supermarketProducts, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (more != null) {
      return more(onResult, supermarketName, category, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuperMarketProductsStart value) start,
    required TResult Function(GetSuperMarketProductsMore value) more,
    required TResult Function(GetSuperMarketProductsSuccessful value) successful,
    required TResult Function(GetSuperMarketProductsError value) error,
  }) {
    return more(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuperMarketProductsStart value)? start,
    TResult? Function(GetSuperMarketProductsMore value)? more,
    TResult? Function(GetSuperMarketProductsSuccessful value)? successful,
    TResult? Function(GetSuperMarketProductsError value)? error,
  }) {
    return more?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuperMarketProductsStart value)? start,
    TResult Function(GetSuperMarketProductsMore value)? more,
    TResult Function(GetSuperMarketProductsSuccessful value)? successful,
    TResult Function(GetSuperMarketProductsError value)? error,
    required TResult orElse(),
  }) {
    if (more != null) {
      return more(this);
    }
    return orElse();
  }
}

abstract class GetSuperMarketProductsMore implements GetSuperMarketProducts, ActionStart {
  const factory GetSuperMarketProductsMore(final ActionResult onResult,
      {required final String supermarketName,
      required final String category,
      final String pendingId}) = _$GetSuperMarketProductsMoreImpl;

  ActionResult get onResult;
  String get supermarketName;
  String get category;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$GetSuperMarketProductsMoreImplCopyWith<_$GetSuperMarketProductsMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSuperMarketProductsSuccessfulImplCopyWith<$Res> implements $GetSuperMarketProductsCopyWith<$Res> {
  factory _$$GetSuperMarketProductsSuccessfulImplCopyWith(
          _$GetSuperMarketProductsSuccessfulImpl value, $Res Function(_$GetSuperMarketProductsSuccessfulImpl) then) =
      __$$GetSuperMarketProductsSuccessfulImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product> supermarketProducts, String pendingId});
}

/// @nodoc
class __$$GetSuperMarketProductsSuccessfulImplCopyWithImpl<$Res>
    extends _$GetSuperMarketProductsCopyWithImpl<$Res, _$GetSuperMarketProductsSuccessfulImpl>
    implements _$$GetSuperMarketProductsSuccessfulImplCopyWith<$Res> {
  __$$GetSuperMarketProductsSuccessfulImplCopyWithImpl(
      _$GetSuperMarketProductsSuccessfulImpl _value, $Res Function(_$GetSuperMarketProductsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supermarketProducts = null,
    Object? pendingId = null,
  }) {
    return _then(_$GetSuperMarketProductsSuccessfulImpl(
      null == supermarketProducts
          ? _value._supermarketProducts
          : supermarketProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSuperMarketProductsSuccessfulImpl implements GetSuperMarketProductsSuccessful {
  const _$GetSuperMarketProductsSuccessfulImpl(final List<Product> supermarketProducts, this.pendingId)
      : _supermarketProducts = supermarketProducts;

  final List<Product> _supermarketProducts;
  @override
  List<Product> get supermarketProducts {
    if (_supermarketProducts is EqualUnmodifiableListView) return _supermarketProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supermarketProducts);
  }

  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetSuperMarketProducts.successful(supermarketProducts: $supermarketProducts, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSuperMarketProductsSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._supermarketProducts, _supermarketProducts) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_supermarketProducts), pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSuperMarketProductsSuccessfulImplCopyWith<_$GetSuperMarketProductsSuccessfulImpl> get copyWith =>
      __$$GetSuperMarketProductsSuccessfulImplCopyWithImpl<_$GetSuperMarketProductsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId) start,
    required TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId) more,
    required TResult Function(List<Product> supermarketProducts, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(supermarketProducts, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionResult onResult, String supermarketName, String category, String pendingId)? start,
    TResult? Function(ActionResult onResult, String supermarketName, String category, String pendingId)? more,
    TResult? Function(List<Product> supermarketProducts, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(supermarketProducts, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId)? start,
    TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId)? more,
    TResult Function(List<Product> supermarketProducts, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(supermarketProducts, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuperMarketProductsStart value) start,
    required TResult Function(GetSuperMarketProductsMore value) more,
    required TResult Function(GetSuperMarketProductsSuccessful value) successful,
    required TResult Function(GetSuperMarketProductsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuperMarketProductsStart value)? start,
    TResult? Function(GetSuperMarketProductsMore value)? more,
    TResult? Function(GetSuperMarketProductsSuccessful value)? successful,
    TResult? Function(GetSuperMarketProductsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuperMarketProductsStart value)? start,
    TResult Function(GetSuperMarketProductsMore value)? more,
    TResult Function(GetSuperMarketProductsSuccessful value)? successful,
    TResult Function(GetSuperMarketProductsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetSuperMarketProductsSuccessful implements GetSuperMarketProducts, ActionDone {
  const factory GetSuperMarketProductsSuccessful(final List<Product> supermarketProducts, final String pendingId) =
      _$GetSuperMarketProductsSuccessfulImpl;

  List<Product> get supermarketProducts;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$GetSuperMarketProductsSuccessfulImplCopyWith<_$GetSuperMarketProductsSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSuperMarketProductsErrorImplCopyWith<$Res> implements $GetSuperMarketProductsCopyWith<$Res> {
  factory _$$GetSuperMarketProductsErrorImplCopyWith(
          _$GetSuperMarketProductsErrorImpl value, $Res Function(_$GetSuperMarketProductsErrorImpl) then) =
      __$$GetSuperMarketProductsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$GetSuperMarketProductsErrorImplCopyWithImpl<$Res>
    extends _$GetSuperMarketProductsCopyWithImpl<$Res, _$GetSuperMarketProductsErrorImpl>
    implements _$$GetSuperMarketProductsErrorImplCopyWith<$Res> {
  __$$GetSuperMarketProductsErrorImplCopyWithImpl(
      _$GetSuperMarketProductsErrorImpl _value, $Res Function(_$GetSuperMarketProductsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
    Object? pendingId = null,
  }) {
    return _then(_$GetSuperMarketProductsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSuperMarketProductsErrorImpl implements GetSuperMarketProductsError {
  const _$GetSuperMarketProductsErrorImpl(this.error, this.stackTrace, this.pendingId);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetSuperMarketProducts.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSuperMarketProductsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSuperMarketProductsErrorImplCopyWith<_$GetSuperMarketProductsErrorImpl> get copyWith =>
      __$$GetSuperMarketProductsErrorImplCopyWithImpl<_$GetSuperMarketProductsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId) start,
    required TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId) more,
    required TResult Function(List<Product> supermarketProducts, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ActionResult onResult, String supermarketName, String category, String pendingId)? start,
    TResult? Function(ActionResult onResult, String supermarketName, String category, String pendingId)? more,
    TResult? Function(List<Product> supermarketProducts, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId)? start,
    TResult Function(ActionResult onResult, String supermarketName, String category, String pendingId)? more,
    TResult Function(List<Product> supermarketProducts, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSuperMarketProductsStart value) start,
    required TResult Function(GetSuperMarketProductsMore value) more,
    required TResult Function(GetSuperMarketProductsSuccessful value) successful,
    required TResult Function(GetSuperMarketProductsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSuperMarketProductsStart value)? start,
    TResult? Function(GetSuperMarketProductsMore value)? more,
    TResult? Function(GetSuperMarketProductsSuccessful value)? successful,
    TResult? Function(GetSuperMarketProductsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSuperMarketProductsStart value)? start,
    TResult Function(GetSuperMarketProductsMore value)? more,
    TResult Function(GetSuperMarketProductsSuccessful value)? successful,
    TResult Function(GetSuperMarketProductsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetSuperMarketProductsError implements GetSuperMarketProducts, ActionDone, ErrorAction {
  const factory GetSuperMarketProductsError(final Object error, final StackTrace stackTrace, final String pendingId) =
      _$GetSuperMarketProductsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$GetSuperMarketProductsErrorImplCopyWith<_$GetSuperMarketProductsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GenerateProducts {
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
    TResult Function(GenerateProductsStart value) $default, {
    required TResult Function(GenerateProductsSuccessful value) successful,
    required TResult Function(GenerateProductsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GenerateProductsStart value)? $default, {
    TResult? Function(GenerateProductsSuccessful value)? successful,
    TResult? Function(GenerateProductsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GenerateProductsStart value)? $default, {
    TResult Function(GenerateProductsSuccessful value)? successful,
    TResult Function(GenerateProductsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateProductsCopyWith<$Res> {
  factory $GenerateProductsCopyWith(GenerateProducts value, $Res Function(GenerateProducts) then) =
      _$GenerateProductsCopyWithImpl<$Res, GenerateProducts>;
}

/// @nodoc
class _$GenerateProductsCopyWithImpl<$Res, $Val extends GenerateProducts> implements $GenerateProductsCopyWith<$Res> {
  _$GenerateProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenerateProductsStartImplCopyWith<$Res> {
  factory _$$GenerateProductsStartImplCopyWith(
          _$GenerateProductsStartImpl value, $Res Function(_$GenerateProductsStartImpl) then) =
      __$$GenerateProductsStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenerateProductsStartImplCopyWithImpl<$Res>
    extends _$GenerateProductsCopyWithImpl<$Res, _$GenerateProductsStartImpl>
    implements _$$GenerateProductsStartImplCopyWith<$Res> {
  __$$GenerateProductsStartImplCopyWithImpl(
      _$GenerateProductsStartImpl _value, $Res Function(_$GenerateProductsStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenerateProductsStartImpl implements GenerateProductsStart {
  const _$GenerateProductsStartImpl();

  @override
  String toString() {
    return 'GenerateProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GenerateProductsStartImpl);
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
    TResult Function(GenerateProductsStart value) $default, {
    required TResult Function(GenerateProductsSuccessful value) successful,
    required TResult Function(GenerateProductsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GenerateProductsStart value)? $default, {
    TResult? Function(GenerateProductsSuccessful value)? successful,
    TResult? Function(GenerateProductsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GenerateProductsStart value)? $default, {
    TResult Function(GenerateProductsSuccessful value)? successful,
    TResult Function(GenerateProductsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GenerateProductsStart implements GenerateProducts {
  const factory GenerateProductsStart() = _$GenerateProductsStartImpl;
}

/// @nodoc
abstract class _$$GenerateProductsSuccessfulImplCopyWith<$Res> {
  factory _$$GenerateProductsSuccessfulImplCopyWith(
          _$GenerateProductsSuccessfulImpl value, $Res Function(_$GenerateProductsSuccessfulImpl) then) =
      __$$GenerateProductsSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenerateProductsSuccessfulImplCopyWithImpl<$Res>
    extends _$GenerateProductsCopyWithImpl<$Res, _$GenerateProductsSuccessfulImpl>
    implements _$$GenerateProductsSuccessfulImplCopyWith<$Res> {
  __$$GenerateProductsSuccessfulImplCopyWithImpl(
      _$GenerateProductsSuccessfulImpl _value, $Res Function(_$GenerateProductsSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenerateProductsSuccessfulImpl implements GenerateProductsSuccessful {
  const _$GenerateProductsSuccessfulImpl();

  @override
  String toString() {
    return 'GenerateProducts.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GenerateProductsSuccessfulImpl);
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
    TResult Function(GenerateProductsStart value) $default, {
    required TResult Function(GenerateProductsSuccessful value) successful,
    required TResult Function(GenerateProductsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GenerateProductsStart value)? $default, {
    TResult? Function(GenerateProductsSuccessful value)? successful,
    TResult? Function(GenerateProductsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GenerateProductsStart value)? $default, {
    TResult Function(GenerateProductsSuccessful value)? successful,
    TResult Function(GenerateProductsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GenerateProductsSuccessful implements GenerateProducts {
  const factory GenerateProductsSuccessful() = _$GenerateProductsSuccessfulImpl;
}

/// @nodoc
abstract class _$$GenerateProductsErrorImplCopyWith<$Res> {
  factory _$$GenerateProductsErrorImplCopyWith(
          _$GenerateProductsErrorImpl value, $Res Function(_$GenerateProductsErrorImpl) then) =
      __$$GenerateProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GenerateProductsErrorImplCopyWithImpl<$Res>
    extends _$GenerateProductsCopyWithImpl<$Res, _$GenerateProductsErrorImpl>
    implements _$$GenerateProductsErrorImplCopyWith<$Res> {
  __$$GenerateProductsErrorImplCopyWithImpl(
      _$GenerateProductsErrorImpl _value, $Res Function(_$GenerateProductsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GenerateProductsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GenerateProductsErrorImpl implements GenerateProductsError {
  const _$GenerateProductsErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GenerateProducts.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateProductsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateProductsErrorImplCopyWith<_$GenerateProductsErrorImpl> get copyWith =>
      __$$GenerateProductsErrorImplCopyWithImpl<_$GenerateProductsErrorImpl>(this, _$identity);

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
    TResult Function(GenerateProductsStart value) $default, {
    required TResult Function(GenerateProductsSuccessful value) successful,
    required TResult Function(GenerateProductsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GenerateProductsStart value)? $default, {
    TResult? Function(GenerateProductsSuccessful value)? successful,
    TResult? Function(GenerateProductsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GenerateProductsStart value)? $default, {
    TResult Function(GenerateProductsSuccessful value)? successful,
    TResult Function(GenerateProductsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GenerateProductsError implements GenerateProducts, ErrorAction {
  const factory GenerateProductsError(final Object error, final StackTrace stackTrace) = _$GenerateProductsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GenerateProductsErrorImplCopyWith<_$GenerateProductsErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddProductToGroceryList {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Product product, String groceryListId, int page, String marketName, String category) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Product product, String groceryListId, int page, String marketName, String category)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Product product, String groceryListId, int page, String marketName, String category)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddProductToGroceryListStart value) $default, {
    required TResult Function(AddProductToGroceryListSuccessful value) successful,
    required TResult Function(AddProductToGroceryListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddProductToGroceryListStart value)? $default, {
    TResult? Function(AddProductToGroceryListSuccessful value)? successful,
    TResult? Function(AddProductToGroceryListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddProductToGroceryListStart value)? $default, {
    TResult Function(AddProductToGroceryListSuccessful value)? successful,
    TResult Function(AddProductToGroceryListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductToGroceryListCopyWith<$Res> {
  factory $AddProductToGroceryListCopyWith(AddProductToGroceryList value, $Res Function(AddProductToGroceryList) then) =
      _$AddProductToGroceryListCopyWithImpl<$Res, AddProductToGroceryList>;
}

/// @nodoc
class _$AddProductToGroceryListCopyWithImpl<$Res, $Val extends AddProductToGroceryList>
    implements $AddProductToGroceryListCopyWith<$Res> {
  _$AddProductToGroceryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddProductToGroceryListStartImplCopyWith<$Res> {
  factory _$$AddProductToGroceryListStartImplCopyWith(
          _$AddProductToGroceryListStartImpl value, $Res Function(_$AddProductToGroceryListStartImpl) then) =
      __$$AddProductToGroceryListStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product, String groceryListId, int page, String marketName, String category});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddProductToGroceryListStartImplCopyWithImpl<$Res>
    extends _$AddProductToGroceryListCopyWithImpl<$Res, _$AddProductToGroceryListStartImpl>
    implements _$$AddProductToGroceryListStartImplCopyWith<$Res> {
  __$$AddProductToGroceryListStartImplCopyWithImpl(
      _$AddProductToGroceryListStartImpl _value, $Res Function(_$AddProductToGroceryListStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? groceryListId = null,
    Object? page = null,
    Object? marketName = null,
    Object? category = null,
  }) {
    return _then(_$AddProductToGroceryListStartImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      null == groceryListId
          ? _value.groceryListId
          : groceryListId // ignore: cast_nullable_to_non_nullable
              as String,
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      marketName: null == marketName
          ? _value.marketName
          : marketName // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$AddProductToGroceryListStartImpl implements AddProductToGroceryListStart {
  const _$AddProductToGroceryListStartImpl(this.product, this.groceryListId, this.page,
      {required this.marketName, required this.category});

  @override
  final Product product;
  @override
  final String groceryListId;
  @override
  final int page;
  @override
  final String marketName;
  @override
  final String category;

  @override
  String toString() {
    return 'AddProductToGroceryList(product: $product, groceryListId: $groceryListId, page: $page, marketName: $marketName, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToGroceryListStartImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.groceryListId, groceryListId) || other.groceryListId == groceryListId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.marketName, marketName) || other.marketName == marketName) &&
            (identical(other.category, category) || other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, groceryListId, page, marketName, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToGroceryListStartImplCopyWith<_$AddProductToGroceryListStartImpl> get copyWith =>
      __$$AddProductToGroceryListStartImplCopyWithImpl<_$AddProductToGroceryListStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Product product, String groceryListId, int page, String marketName, String category) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(product, groceryListId, page, marketName, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Product product, String groceryListId, int page, String marketName, String category)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(product, groceryListId, page, marketName, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Product product, String groceryListId, int page, String marketName, String category)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(product, groceryListId, page, marketName, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddProductToGroceryListStart value) $default, {
    required TResult Function(AddProductToGroceryListSuccessful value) successful,
    required TResult Function(AddProductToGroceryListError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddProductToGroceryListStart value)? $default, {
    TResult? Function(AddProductToGroceryListSuccessful value)? successful,
    TResult? Function(AddProductToGroceryListError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddProductToGroceryListStart value)? $default, {
    TResult Function(AddProductToGroceryListSuccessful value)? successful,
    TResult Function(AddProductToGroceryListError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddProductToGroceryListStart implements AddProductToGroceryList {
  const factory AddProductToGroceryListStart(final Product product, final String groceryListId, final int page,
      {required final String marketName, required final String category}) = _$AddProductToGroceryListStartImpl;

  Product get product;
  String get groceryListId;
  int get page;
  String get marketName;
  String get category;
  @JsonKey(ignore: true)
  _$$AddProductToGroceryListStartImplCopyWith<_$AddProductToGroceryListStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToGroceryListSuccessfulImplCopyWith<$Res> {
  factory _$$AddProductToGroceryListSuccessfulImplCopyWith(
          _$AddProductToGroceryListSuccessfulImpl value, $Res Function(_$AddProductToGroceryListSuccessfulImpl) then) =
      __$$AddProductToGroceryListSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddProductToGroceryListSuccessfulImplCopyWithImpl<$Res>
    extends _$AddProductToGroceryListCopyWithImpl<$Res, _$AddProductToGroceryListSuccessfulImpl>
    implements _$$AddProductToGroceryListSuccessfulImplCopyWith<$Res> {
  __$$AddProductToGroceryListSuccessfulImplCopyWithImpl(
      _$AddProductToGroceryListSuccessfulImpl _value, $Res Function(_$AddProductToGroceryListSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddProductToGroceryListSuccessfulImpl implements AddProductToGroceryListSuccessful {
  const _$AddProductToGroceryListSuccessfulImpl();

  @override
  String toString() {
    return 'AddProductToGroceryList.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddProductToGroceryListSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Product product, String groceryListId, int page, String marketName, String category) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Product product, String groceryListId, int page, String marketName, String category)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Product product, String groceryListId, int page, String marketName, String category)? $default, {
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
    TResult Function(AddProductToGroceryListStart value) $default, {
    required TResult Function(AddProductToGroceryListSuccessful value) successful,
    required TResult Function(AddProductToGroceryListError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddProductToGroceryListStart value)? $default, {
    TResult? Function(AddProductToGroceryListSuccessful value)? successful,
    TResult? Function(AddProductToGroceryListError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddProductToGroceryListStart value)? $default, {
    TResult Function(AddProductToGroceryListSuccessful value)? successful,
    TResult Function(AddProductToGroceryListError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddProductToGroceryListSuccessful implements AddProductToGroceryList {
  const factory AddProductToGroceryListSuccessful() = _$AddProductToGroceryListSuccessfulImpl;
}

/// @nodoc
abstract class _$$AddProductToGroceryListErrorImplCopyWith<$Res> {
  factory _$$AddProductToGroceryListErrorImplCopyWith(
          _$AddProductToGroceryListErrorImpl value, $Res Function(_$AddProductToGroceryListErrorImpl) then) =
      __$$AddProductToGroceryListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$AddProductToGroceryListErrorImplCopyWithImpl<$Res>
    extends _$AddProductToGroceryListCopyWithImpl<$Res, _$AddProductToGroceryListErrorImpl>
    implements _$$AddProductToGroceryListErrorImplCopyWith<$Res> {
  __$$AddProductToGroceryListErrorImplCopyWithImpl(
      _$AddProductToGroceryListErrorImpl _value, $Res Function(_$AddProductToGroceryListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$AddProductToGroceryListErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$AddProductToGroceryListErrorImpl implements AddProductToGroceryListError {
  const _$AddProductToGroceryListErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AddProductToGroceryList.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToGroceryListErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToGroceryListErrorImplCopyWith<_$AddProductToGroceryListErrorImpl> get copyWith =>
      __$$AddProductToGroceryListErrorImplCopyWithImpl<_$AddProductToGroceryListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Product product, String groceryListId, int page, String marketName, String category) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Product product, String groceryListId, int page, String marketName, String category)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Product product, String groceryListId, int page, String marketName, String category)? $default, {
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
    TResult Function(AddProductToGroceryListStart value) $default, {
    required TResult Function(AddProductToGroceryListSuccessful value) successful,
    required TResult Function(AddProductToGroceryListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(AddProductToGroceryListStart value)? $default, {
    TResult? Function(AddProductToGroceryListSuccessful value)? successful,
    TResult? Function(AddProductToGroceryListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddProductToGroceryListStart value)? $default, {
    TResult Function(AddProductToGroceryListSuccessful value)? successful,
    TResult Function(AddProductToGroceryListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddProductToGroceryListError implements AddProductToGroceryList, ErrorAction {
  const factory AddProductToGroceryListError(final Object error, final StackTrace stackTrace) =
      _$AddProductToGroceryListErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$AddProductToGroceryListErrorImplCopyWith<_$AddProductToGroceryListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequestStoragePermission {
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
    TResult Function(RequestStoragePermissionStart value) $default, {
    required TResult Function(RequestStoragePermissionSuccessful value) successful,
    required TResult Function(RequestStoragePermissionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RequestStoragePermissionStart value)? $default, {
    TResult? Function(RequestStoragePermissionSuccessful value)? successful,
    TResult? Function(RequestStoragePermissionError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestStoragePermissionStart value)? $default, {
    TResult Function(RequestStoragePermissionSuccessful value)? successful,
    TResult Function(RequestStoragePermissionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestStoragePermissionCopyWith<$Res> {
  factory $RequestStoragePermissionCopyWith(
          RequestStoragePermission value, $Res Function(RequestStoragePermission) then) =
      _$RequestStoragePermissionCopyWithImpl<$Res, RequestStoragePermission>;
}

/// @nodoc
class _$RequestStoragePermissionCopyWithImpl<$Res, $Val extends RequestStoragePermission>
    implements $RequestStoragePermissionCopyWith<$Res> {
  _$RequestStoragePermissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestStoragePermissionStartImplCopyWith<$Res> {
  factory _$$RequestStoragePermissionStartImplCopyWith(
          _$RequestStoragePermissionStartImpl value, $Res Function(_$RequestStoragePermissionStartImpl) then) =
      __$$RequestStoragePermissionStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestStoragePermissionStartImplCopyWithImpl<$Res>
    extends _$RequestStoragePermissionCopyWithImpl<$Res, _$RequestStoragePermissionStartImpl>
    implements _$$RequestStoragePermissionStartImplCopyWith<$Res> {
  __$$RequestStoragePermissionStartImplCopyWithImpl(
      _$RequestStoragePermissionStartImpl _value, $Res Function(_$RequestStoragePermissionStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestStoragePermissionStartImpl implements RequestStoragePermissionStart {
  const _$RequestStoragePermissionStartImpl();

  @override
  String toString() {
    return 'RequestStoragePermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$RequestStoragePermissionStartImpl);
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
    TResult Function(RequestStoragePermissionStart value) $default, {
    required TResult Function(RequestStoragePermissionSuccessful value) successful,
    required TResult Function(RequestStoragePermissionError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RequestStoragePermissionStart value)? $default, {
    TResult? Function(RequestStoragePermissionSuccessful value)? successful,
    TResult? Function(RequestStoragePermissionError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestStoragePermissionStart value)? $default, {
    TResult Function(RequestStoragePermissionSuccessful value)? successful,
    TResult Function(RequestStoragePermissionError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RequestStoragePermissionStart implements RequestStoragePermission {
  const factory RequestStoragePermissionStart() = _$RequestStoragePermissionStartImpl;
}

/// @nodoc
abstract class _$$RequestStoragePermissionSuccessfulImplCopyWith<$Res> {
  factory _$$RequestStoragePermissionSuccessfulImplCopyWith(_$RequestStoragePermissionSuccessfulImpl value,
          $Res Function(_$RequestStoragePermissionSuccessfulImpl) then) =
      __$$RequestStoragePermissionSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestStoragePermissionSuccessfulImplCopyWithImpl<$Res>
    extends _$RequestStoragePermissionCopyWithImpl<$Res, _$RequestStoragePermissionSuccessfulImpl>
    implements _$$RequestStoragePermissionSuccessfulImplCopyWith<$Res> {
  __$$RequestStoragePermissionSuccessfulImplCopyWithImpl(
      _$RequestStoragePermissionSuccessfulImpl _value, $Res Function(_$RequestStoragePermissionSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestStoragePermissionSuccessfulImpl implements RequestStoragePermissionSuccessful {
  const _$RequestStoragePermissionSuccessfulImpl();

  @override
  String toString() {
    return 'RequestStoragePermission.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestStoragePermissionSuccessfulImpl);
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
    TResult Function(RequestStoragePermissionStart value) $default, {
    required TResult Function(RequestStoragePermissionSuccessful value) successful,
    required TResult Function(RequestStoragePermissionError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RequestStoragePermissionStart value)? $default, {
    TResult? Function(RequestStoragePermissionSuccessful value)? successful,
    TResult? Function(RequestStoragePermissionError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestStoragePermissionStart value)? $default, {
    TResult Function(RequestStoragePermissionSuccessful value)? successful,
    TResult Function(RequestStoragePermissionError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RequestStoragePermissionSuccessful implements RequestStoragePermission {
  const factory RequestStoragePermissionSuccessful() = _$RequestStoragePermissionSuccessfulImpl;
}

/// @nodoc
abstract class _$$RequestStoragePermissionErrorImplCopyWith<$Res> {
  factory _$$RequestStoragePermissionErrorImplCopyWith(
          _$RequestStoragePermissionErrorImpl value, $Res Function(_$RequestStoragePermissionErrorImpl) then) =
      __$$RequestStoragePermissionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$RequestStoragePermissionErrorImplCopyWithImpl<$Res>
    extends _$RequestStoragePermissionCopyWithImpl<$Res, _$RequestStoragePermissionErrorImpl>
    implements _$$RequestStoragePermissionErrorImplCopyWith<$Res> {
  __$$RequestStoragePermissionErrorImplCopyWithImpl(
      _$RequestStoragePermissionErrorImpl _value, $Res Function(_$RequestStoragePermissionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$RequestStoragePermissionErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$RequestStoragePermissionErrorImpl implements RequestStoragePermissionError {
  const _$RequestStoragePermissionErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'RequestStoragePermission.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestStoragePermissionErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestStoragePermissionErrorImplCopyWith<_$RequestStoragePermissionErrorImpl> get copyWith =>
      __$$RequestStoragePermissionErrorImplCopyWithImpl<_$RequestStoragePermissionErrorImpl>(this, _$identity);

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
    TResult Function(RequestStoragePermissionStart value) $default, {
    required TResult Function(RequestStoragePermissionSuccessful value) successful,
    required TResult Function(RequestStoragePermissionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RequestStoragePermissionStart value)? $default, {
    TResult? Function(RequestStoragePermissionSuccessful value)? successful,
    TResult? Function(RequestStoragePermissionError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequestStoragePermissionStart value)? $default, {
    TResult Function(RequestStoragePermissionSuccessful value)? successful,
    TResult Function(RequestStoragePermissionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RequestStoragePermissionError implements RequestStoragePermission, ErrorAction {
  const factory RequestStoragePermissionError(final Object error, final StackTrace stackTrace) =
      _$RequestStoragePermissionErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$RequestStoragePermissionErrorImplCopyWith<_$RequestStoragePermissionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetCameras {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<CameraInfo> cameras) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<CameraInfo> cameras)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<CameraInfo> cameras)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCamerasStart value) $default, {
    required TResult Function(GetCamerasSuccessful value) successful,
    required TResult Function(GetCamerasError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCamerasStart value)? $default, {
    TResult? Function(GetCamerasSuccessful value)? successful,
    TResult? Function(GetCamerasError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCamerasStart value)? $default, {
    TResult Function(GetCamerasSuccessful value)? successful,
    TResult Function(GetCamerasError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCamerasCopyWith<$Res> {
  factory $GetCamerasCopyWith(GetCameras value, $Res Function(GetCameras) then) =
      _$GetCamerasCopyWithImpl<$Res, GetCameras>;
}

/// @nodoc
class _$GetCamerasCopyWithImpl<$Res, $Val extends GetCameras> implements $GetCamerasCopyWith<$Res> {
  _$GetCamerasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCamerasStartImplCopyWith<$Res> {
  factory _$$GetCamerasStartImplCopyWith(_$GetCamerasStartImpl value, $Res Function(_$GetCamerasStartImpl) then) =
      __$$GetCamerasStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCamerasStartImplCopyWithImpl<$Res> extends _$GetCamerasCopyWithImpl<$Res, _$GetCamerasStartImpl>
    implements _$$GetCamerasStartImplCopyWith<$Res> {
  __$$GetCamerasStartImplCopyWithImpl(_$GetCamerasStartImpl _value, $Res Function(_$GetCamerasStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCamerasStartImpl implements GetCamerasStart {
  const _$GetCamerasStartImpl();

  @override
  String toString() {
    return 'GetCameras()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetCamerasStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<CameraInfo> cameras) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<CameraInfo> cameras)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<CameraInfo> cameras)? successful,
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
    TResult Function(GetCamerasStart value) $default, {
    required TResult Function(GetCamerasSuccessful value) successful,
    required TResult Function(GetCamerasError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCamerasStart value)? $default, {
    TResult? Function(GetCamerasSuccessful value)? successful,
    TResult? Function(GetCamerasError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCamerasStart value)? $default, {
    TResult Function(GetCamerasSuccessful value)? successful,
    TResult Function(GetCamerasError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCamerasStart implements GetCameras {
  const factory GetCamerasStart() = _$GetCamerasStartImpl;
}

/// @nodoc
abstract class _$$GetCamerasSuccessfulImplCopyWith<$Res> {
  factory _$$GetCamerasSuccessfulImplCopyWith(
          _$GetCamerasSuccessfulImpl value, $Res Function(_$GetCamerasSuccessfulImpl) then) =
      __$$GetCamerasSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CameraInfo> cameras});
}

/// @nodoc
class __$$GetCamerasSuccessfulImplCopyWithImpl<$Res> extends _$GetCamerasCopyWithImpl<$Res, _$GetCamerasSuccessfulImpl>
    implements _$$GetCamerasSuccessfulImplCopyWith<$Res> {
  __$$GetCamerasSuccessfulImplCopyWithImpl(
      _$GetCamerasSuccessfulImpl _value, $Res Function(_$GetCamerasSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameras = null,
  }) {
    return _then(_$GetCamerasSuccessfulImpl(
      null == cameras
          ? _value._cameras
          : cameras // ignore: cast_nullable_to_non_nullable
              as List<CameraInfo>,
    ));
  }
}

/// @nodoc

class _$GetCamerasSuccessfulImpl implements GetCamerasSuccessful {
  const _$GetCamerasSuccessfulImpl(final List<CameraInfo> cameras) : _cameras = cameras;

  final List<CameraInfo> _cameras;
  @override
  List<CameraInfo> get cameras {
    if (_cameras is EqualUnmodifiableListView) return _cameras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cameras);
  }

  @override
  String toString() {
    return 'GetCameras.successful(cameras: $cameras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCamerasSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._cameras, _cameras));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_cameras));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCamerasSuccessfulImplCopyWith<_$GetCamerasSuccessfulImpl> get copyWith =>
      __$$GetCamerasSuccessfulImplCopyWithImpl<_$GetCamerasSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<CameraInfo> cameras) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(cameras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<CameraInfo> cameras)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(cameras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<CameraInfo> cameras)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(cameras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCamerasStart value) $default, {
    required TResult Function(GetCamerasSuccessful value) successful,
    required TResult Function(GetCamerasError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCamerasStart value)? $default, {
    TResult? Function(GetCamerasSuccessful value)? successful,
    TResult? Function(GetCamerasError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCamerasStart value)? $default, {
    TResult Function(GetCamerasSuccessful value)? successful,
    TResult Function(GetCamerasError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCamerasSuccessful implements GetCameras {
  const factory GetCamerasSuccessful(final List<CameraInfo> cameras) = _$GetCamerasSuccessfulImpl;

  List<CameraInfo> get cameras;
  @JsonKey(ignore: true)
  _$$GetCamerasSuccessfulImplCopyWith<_$GetCamerasSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCamerasErrorImplCopyWith<$Res> {
  factory _$$GetCamerasErrorImplCopyWith(_$GetCamerasErrorImpl value, $Res Function(_$GetCamerasErrorImpl) then) =
      __$$GetCamerasErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetCamerasErrorImplCopyWithImpl<$Res> extends _$GetCamerasCopyWithImpl<$Res, _$GetCamerasErrorImpl>
    implements _$$GetCamerasErrorImplCopyWith<$Res> {
  __$$GetCamerasErrorImplCopyWithImpl(_$GetCamerasErrorImpl _value, $Res Function(_$GetCamerasErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetCamerasErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetCamerasErrorImpl implements GetCamerasError {
  const _$GetCamerasErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetCameras.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCamerasErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCamerasErrorImplCopyWith<_$GetCamerasErrorImpl> get copyWith =>
      __$$GetCamerasErrorImplCopyWithImpl<_$GetCamerasErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<CameraInfo> cameras) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<CameraInfo> cameras)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<CameraInfo> cameras)? successful,
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
    TResult Function(GetCamerasStart value) $default, {
    required TResult Function(GetCamerasSuccessful value) successful,
    required TResult Function(GetCamerasError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCamerasStart value)? $default, {
    TResult? Function(GetCamerasSuccessful value)? successful,
    TResult? Function(GetCamerasError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCamerasStart value)? $default, {
    TResult Function(GetCamerasSuccessful value)? successful,
    TResult Function(GetCamerasError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCamerasError implements GetCameras, ErrorAction {
  const factory GetCamerasError(final Object error, final StackTrace stackTrace) = _$GetCamerasErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetCamerasErrorImplCopyWith<_$GetCamerasErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitializeController {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController controller, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController controller, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController controller, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeControllerStart value) start,
    required TResult Function(InitializeControllerSuccessful value) successful,
    required TResult Function(InitializeControllerError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeControllerStart value)? start,
    TResult? Function(InitializeControllerSuccessful value)? successful,
    TResult? Function(InitializeControllerError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeControllerStart value)? start,
    TResult Function(InitializeControllerSuccessful value)? successful,
    TResult Function(InitializeControllerError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitializeControllerCopyWith<InitializeController> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializeControllerCopyWith<$Res> {
  factory $InitializeControllerCopyWith(InitializeController value, $Res Function(InitializeController) then) =
      _$InitializeControllerCopyWithImpl<$Res, InitializeController>;
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class _$InitializeControllerCopyWithImpl<$Res, $Val extends InitializeController>
    implements $InitializeControllerCopyWith<$Res> {
  _$InitializeControllerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_value.copyWith(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitializeControllerStartImplCopyWith<$Res> implements $InitializeControllerCopyWith<$Res> {
  factory _$$InitializeControllerStartImplCopyWith(
          _$InitializeControllerStartImpl value, $Res Function(_$InitializeControllerStartImpl) then) =
      __$$InitializeControllerStartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CameraController controller, String pendingId});
}

/// @nodoc
class __$$InitializeControllerStartImplCopyWithImpl<$Res>
    extends _$InitializeControllerCopyWithImpl<$Res, _$InitializeControllerStartImpl>
    implements _$$InitializeControllerStartImplCopyWith<$Res> {
  __$$InitializeControllerStartImplCopyWithImpl(
      _$InitializeControllerStartImpl _value, $Res Function(_$InitializeControllerStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? pendingId = null,
  }) {
    return _then(_$InitializeControllerStartImpl(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializeControllerStartImpl implements InitializeControllerStart {
  const _$InitializeControllerStartImpl({required this.controller, this.pendingId = _kInitializeControllerPendingId});

  @override
  final CameraController controller;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'InitializeController.start(controller: $controller, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeControllerStartImpl &&
            (identical(other.controller, controller) || other.controller == controller) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeControllerStartImplCopyWith<_$InitializeControllerStartImpl> get copyWith =>
      __$$InitializeControllerStartImplCopyWithImpl<_$InitializeControllerStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController controller, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(controller, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController controller, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(controller, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController controller, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(controller, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeControllerStart value) start,
    required TResult Function(InitializeControllerSuccessful value) successful,
    required TResult Function(InitializeControllerError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeControllerStart value)? start,
    TResult? Function(InitializeControllerSuccessful value)? successful,
    TResult? Function(InitializeControllerError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeControllerStart value)? start,
    TResult Function(InitializeControllerSuccessful value)? successful,
    TResult Function(InitializeControllerError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class InitializeControllerStart implements InitializeController, ActionStart {
  const factory InitializeControllerStart({required final CameraController controller, final String pendingId}) =
      _$InitializeControllerStartImpl;

  CameraController get controller;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$InitializeControllerStartImplCopyWith<_$InitializeControllerStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeControllerSuccessfulImplCopyWith<$Res> implements $InitializeControllerCopyWith<$Res> {
  factory _$$InitializeControllerSuccessfulImplCopyWith(
          _$InitializeControllerSuccessfulImpl value, $Res Function(_$InitializeControllerSuccessfulImpl) then) =
      __$$InitializeControllerSuccessfulImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class __$$InitializeControllerSuccessfulImplCopyWithImpl<$Res>
    extends _$InitializeControllerCopyWithImpl<$Res, _$InitializeControllerSuccessfulImpl>
    implements _$$InitializeControllerSuccessfulImplCopyWith<$Res> {
  __$$InitializeControllerSuccessfulImplCopyWithImpl(
      _$InitializeControllerSuccessfulImpl _value, $Res Function(_$InitializeControllerSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_$InitializeControllerSuccessfulImpl(
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializeControllerSuccessfulImpl implements InitializeControllerSuccessful {
  const _$InitializeControllerSuccessfulImpl([this.pendingId = _kInitializeControllerPendingId]);

  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'InitializeController.successful(pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeControllerSuccessfulImpl &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeControllerSuccessfulImplCopyWith<_$InitializeControllerSuccessfulImpl> get copyWith =>
      __$$InitializeControllerSuccessfulImplCopyWithImpl<_$InitializeControllerSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController controller, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController controller, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController controller, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeControllerStart value) start,
    required TResult Function(InitializeControllerSuccessful value) successful,
    required TResult Function(InitializeControllerError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeControllerStart value)? start,
    TResult? Function(InitializeControllerSuccessful value)? successful,
    TResult? Function(InitializeControllerError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeControllerStart value)? start,
    TResult Function(InitializeControllerSuccessful value)? successful,
    TResult Function(InitializeControllerError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class InitializeControllerSuccessful implements InitializeController, ActionDone {
  const factory InitializeControllerSuccessful([final String pendingId]) = _$InitializeControllerSuccessfulImpl;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$InitializeControllerSuccessfulImplCopyWith<_$InitializeControllerSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeControllerErrorImplCopyWith<$Res> implements $InitializeControllerCopyWith<$Res> {
  factory _$$InitializeControllerErrorImplCopyWith(
          _$InitializeControllerErrorImpl value, $Res Function(_$InitializeControllerErrorImpl) then) =
      __$$InitializeControllerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$InitializeControllerErrorImplCopyWithImpl<$Res>
    extends _$InitializeControllerCopyWithImpl<$Res, _$InitializeControllerErrorImpl>
    implements _$$InitializeControllerErrorImplCopyWith<$Res> {
  __$$InitializeControllerErrorImplCopyWithImpl(
      _$InitializeControllerErrorImpl _value, $Res Function(_$InitializeControllerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
    Object? pendingId = null,
  }) {
    return _then(_$InitializeControllerErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitializeControllerErrorImpl implements InitializeControllerError {
  const _$InitializeControllerErrorImpl(this.error, this.stackTrace,
      [this.pendingId = _kInitializeControllerPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'InitializeController.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeControllerErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeControllerErrorImplCopyWith<_$InitializeControllerErrorImpl> get copyWith =>
      __$$InitializeControllerErrorImplCopyWithImpl<_$InitializeControllerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController controller, String pendingId) start,
    required TResult Function(String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController controller, String pendingId)? start,
    TResult? Function(String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController controller, String pendingId)? start,
    TResult Function(String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeControllerStart value) start,
    required TResult Function(InitializeControllerSuccessful value) successful,
    required TResult Function(InitializeControllerError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeControllerStart value)? start,
    TResult? Function(InitializeControllerSuccessful value)? successful,
    TResult? Function(InitializeControllerError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeControllerStart value)? start,
    TResult Function(InitializeControllerSuccessful value)? successful,
    TResult Function(InitializeControllerError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializeControllerError implements InitializeController, ActionDone, ErrorAction {
  const factory InitializeControllerError(final Object error, final StackTrace stackTrace, [final String pendingId]) =
      _$InitializeControllerErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$InitializeControllerErrorImplCopyWith<_$InitializeControllerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TakePicture {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController controller, String pendingId) start,
    required TResult Function(TakenPicture takenPicture, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController controller, String pendingId)? start,
    TResult? Function(TakenPicture takenPicture, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController controller, String pendingId)? start,
    TResult Function(TakenPicture takenPicture, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TakePictureStart value) start,
    required TResult Function(TakePictureSuccessful value) successful,
    required TResult Function(TakePictureError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TakePictureStart value)? start,
    TResult? Function(TakePictureSuccessful value)? successful,
    TResult? Function(TakePictureError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TakePictureStart value)? start,
    TResult Function(TakePictureSuccessful value)? successful,
    TResult Function(TakePictureError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TakePictureCopyWith<TakePicture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakePictureCopyWith<$Res> {
  factory $TakePictureCopyWith(TakePicture value, $Res Function(TakePicture) then) =
      _$TakePictureCopyWithImpl<$Res, TakePicture>;
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class _$TakePictureCopyWithImpl<$Res, $Val extends TakePicture> implements $TakePictureCopyWith<$Res> {
  _$TakePictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_value.copyWith(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TakePictureStartImplCopyWith<$Res> implements $TakePictureCopyWith<$Res> {
  factory _$$TakePictureStartImplCopyWith(_$TakePictureStartImpl value, $Res Function(_$TakePictureStartImpl) then) =
      __$$TakePictureStartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CameraController controller, String pendingId});
}

/// @nodoc
class __$$TakePictureStartImplCopyWithImpl<$Res> extends _$TakePictureCopyWithImpl<$Res, _$TakePictureStartImpl>
    implements _$$TakePictureStartImplCopyWith<$Res> {
  __$$TakePictureStartImplCopyWithImpl(_$TakePictureStartImpl _value, $Res Function(_$TakePictureStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? pendingId = null,
  }) {
    return _then(_$TakePictureStartImpl(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TakePictureStartImpl implements TakePictureStart {
  const _$TakePictureStartImpl({required this.controller, this.pendingId = _kTakePicturePendingId});

  @override
  final CameraController controller;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'TakePicture.start(controller: $controller, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakePictureStartImpl &&
            (identical(other.controller, controller) || other.controller == controller) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakePictureStartImplCopyWith<_$TakePictureStartImpl> get copyWith =>
      __$$TakePictureStartImplCopyWithImpl<_$TakePictureStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController controller, String pendingId) start,
    required TResult Function(TakenPicture takenPicture, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(controller, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController controller, String pendingId)? start,
    TResult? Function(TakenPicture takenPicture, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(controller, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController controller, String pendingId)? start,
    TResult Function(TakenPicture takenPicture, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(controller, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TakePictureStart value) start,
    required TResult Function(TakePictureSuccessful value) successful,
    required TResult Function(TakePictureError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TakePictureStart value)? start,
    TResult? Function(TakePictureSuccessful value)? successful,
    TResult? Function(TakePictureError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TakePictureStart value)? start,
    TResult Function(TakePictureSuccessful value)? successful,
    TResult Function(TakePictureError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class TakePictureStart implements TakePicture, ActionStart {
  const factory TakePictureStart({required final CameraController controller, final String pendingId}) =
      _$TakePictureStartImpl;

  CameraController get controller;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$TakePictureStartImplCopyWith<_$TakePictureStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TakePictureSuccessfulImplCopyWith<$Res> implements $TakePictureCopyWith<$Res> {
  factory _$$TakePictureSuccessfulImplCopyWith(
          _$TakePictureSuccessfulImpl value, $Res Function(_$TakePictureSuccessfulImpl) then) =
      __$$TakePictureSuccessfulImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TakenPicture takenPicture, String pendingId});

  $TakenPictureCopyWith<$Res> get takenPicture;
}

/// @nodoc
class __$$TakePictureSuccessfulImplCopyWithImpl<$Res>
    extends _$TakePictureCopyWithImpl<$Res, _$TakePictureSuccessfulImpl>
    implements _$$TakePictureSuccessfulImplCopyWith<$Res> {
  __$$TakePictureSuccessfulImplCopyWithImpl(
      _$TakePictureSuccessfulImpl _value, $Res Function(_$TakePictureSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? takenPicture = null,
    Object? pendingId = null,
  }) {
    return _then(_$TakePictureSuccessfulImpl(
      null == takenPicture
          ? _value.takenPicture
          : takenPicture // ignore: cast_nullable_to_non_nullable
              as TakenPicture,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TakenPictureCopyWith<$Res> get takenPicture {
    return $TakenPictureCopyWith<$Res>(_value.takenPicture, (value) {
      return _then(_value.copyWith(takenPicture: value));
    });
  }
}

/// @nodoc

class _$TakePictureSuccessfulImpl implements TakePictureSuccessful {
  const _$TakePictureSuccessfulImpl(this.takenPicture, [this.pendingId = _kTakePicturePendingId]);

  @override
  final TakenPicture takenPicture;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'TakePicture.successful(takenPicture: $takenPicture, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakePictureSuccessfulImpl &&
            (identical(other.takenPicture, takenPicture) || other.takenPicture == takenPicture) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, takenPicture, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakePictureSuccessfulImplCopyWith<_$TakePictureSuccessfulImpl> get copyWith =>
      __$$TakePictureSuccessfulImplCopyWithImpl<_$TakePictureSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController controller, String pendingId) start,
    required TResult Function(TakenPicture takenPicture, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(takenPicture, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController controller, String pendingId)? start,
    TResult? Function(TakenPicture takenPicture, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(takenPicture, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController controller, String pendingId)? start,
    TResult Function(TakenPicture takenPicture, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(takenPicture, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TakePictureStart value) start,
    required TResult Function(TakePictureSuccessful value) successful,
    required TResult Function(TakePictureError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TakePictureStart value)? start,
    TResult? Function(TakePictureSuccessful value)? successful,
    TResult? Function(TakePictureError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TakePictureStart value)? start,
    TResult Function(TakePictureSuccessful value)? successful,
    TResult Function(TakePictureError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class TakePictureSuccessful implements TakePicture, ActionDone {
  const factory TakePictureSuccessful(final TakenPicture takenPicture, [final String pendingId]) =
      _$TakePictureSuccessfulImpl;

  TakenPicture get takenPicture;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$TakePictureSuccessfulImplCopyWith<_$TakePictureSuccessfulImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TakePictureErrorImplCopyWith<$Res> implements $TakePictureCopyWith<$Res> {
  factory _$$TakePictureErrorImplCopyWith(_$TakePictureErrorImpl value, $Res Function(_$TakePictureErrorImpl) then) =
      __$$TakePictureErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$TakePictureErrorImplCopyWithImpl<$Res> extends _$TakePictureCopyWithImpl<$Res, _$TakePictureErrorImpl>
    implements _$$TakePictureErrorImplCopyWith<$Res> {
  __$$TakePictureErrorImplCopyWithImpl(_$TakePictureErrorImpl _value, $Res Function(_$TakePictureErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
    Object? pendingId = null,
  }) {
    return _then(_$TakePictureErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TakePictureErrorImpl implements TakePictureError {
  const _$TakePictureErrorImpl(this.error, this.stackTrace, [this.pendingId = _kTakePicturePendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'TakePicture.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakePictureErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TakePictureErrorImplCopyWith<_$TakePictureErrorImpl> get copyWith =>
      __$$TakePictureErrorImplCopyWithImpl<_$TakePictureErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CameraController controller, String pendingId) start,
    required TResult Function(TakenPicture takenPicture, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraController controller, String pendingId)? start,
    TResult? Function(TakenPicture takenPicture, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraController controller, String pendingId)? start,
    TResult Function(TakenPicture takenPicture, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TakePictureStart value) start,
    required TResult Function(TakePictureSuccessful value) successful,
    required TResult Function(TakePictureError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TakePictureStart value)? start,
    TResult? Function(TakePictureSuccessful value)? successful,
    TResult? Function(TakePictureError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TakePictureStart value)? start,
    TResult Function(TakePictureSuccessful value)? successful,
    TResult Function(TakePictureError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TakePictureError implements TakePicture, ActionDone, ErrorAction {
  const factory TakePictureError(final Object error, final StackTrace stackTrace, [final String pendingId]) =
      _$TakePictureErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$TakePictureErrorImplCopyWith<_$TakePictureErrorImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetImageLabels {
  String get pendingId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath, String pendingId) start,
    required TResult Function(String imageLabel, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath, String pendingId)? start,
    TResult? Function(String imageLabel, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath, String pendingId)? start,
    TResult Function(String imageLabel, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImageLabelsStart value) start,
    required TResult Function(GetImageLabelsSuccessful value) successful,
    required TResult Function(GetImageLabelsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImageLabelsStart value)? start,
    TResult? Function(GetImageLabelsSuccessful value)? successful,
    TResult? Function(GetImageLabelsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImageLabelsStart value)? start,
    TResult Function(GetImageLabelsSuccessful value)? successful,
    TResult Function(GetImageLabelsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetImageLabelsCopyWith<GetImageLabels> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetImageLabelsCopyWith<$Res> {
  factory $GetImageLabelsCopyWith(GetImageLabels value, $Res Function(GetImageLabels) then) =
      _$GetImageLabelsCopyWithImpl<$Res, GetImageLabels>;
  @useResult
  $Res call({String pendingId});
}

/// @nodoc
class _$GetImageLabelsCopyWithImpl<$Res, $Val extends GetImageLabels> implements $GetImageLabelsCopyWith<$Res> {
  _$GetImageLabelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingId = null,
  }) {
    return _then(_value.copyWith(
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetImageLabelsStartImplCopyWith<$Res> implements $GetImageLabelsCopyWith<$Res> {
  factory _$$GetImageLabelsStartImplCopyWith(
          _$GetImageLabelsStartImpl value, $Res Function(_$GetImageLabelsStartImpl) then) =
      __$$GetImageLabelsStartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath, String pendingId});
}

/// @nodoc
class __$$GetImageLabelsStartImplCopyWithImpl<$Res>
    extends _$GetImageLabelsCopyWithImpl<$Res, _$GetImageLabelsStartImpl>
    implements _$$GetImageLabelsStartImplCopyWith<$Res> {
  __$$GetImageLabelsStartImplCopyWithImpl(
      _$GetImageLabelsStartImpl _value, $Res Function(_$GetImageLabelsStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? pendingId = null,
  }) {
    return _then(_$GetImageLabelsStartImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      pendingId: null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetImageLabelsStartImpl implements GetImageLabelsStart {
  const _$GetImageLabelsStartImpl({required this.imagePath, this.pendingId = _kGetImageLabelsPendingId});

  @override
  final String imagePath;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetImageLabels.start(imagePath: $imagePath, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImageLabelsStartImpl &&
            (identical(other.imagePath, imagePath) || other.imagePath == imagePath) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImageLabelsStartImplCopyWith<_$GetImageLabelsStartImpl> get copyWith =>
      __$$GetImageLabelsStartImplCopyWithImpl<_$GetImageLabelsStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath, String pendingId) start,
    required TResult Function(String imageLabel, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return start(imagePath, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath, String pendingId)? start,
    TResult? Function(String imageLabel, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return start?.call(imagePath, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath, String pendingId)? start,
    TResult Function(String imageLabel, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(imagePath, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImageLabelsStart value) start,
    required TResult Function(GetImageLabelsSuccessful value) successful,
    required TResult Function(GetImageLabelsError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImageLabelsStart value)? start,
    TResult? Function(GetImageLabelsSuccessful value)? successful,
    TResult? Function(GetImageLabelsError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImageLabelsStart value)? start,
    TResult Function(GetImageLabelsSuccessful value)? successful,
    TResult Function(GetImageLabelsError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetImageLabelsStart implements GetImageLabels, ActionStart {
  const factory GetImageLabelsStart({required final String imagePath, final String pendingId}) =
      _$GetImageLabelsStartImpl;

  String get imagePath;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$GetImageLabelsStartImplCopyWith<_$GetImageLabelsStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImageLabelsSuccessfulImplCopyWith<$Res> implements $GetImageLabelsCopyWith<$Res> {
  factory _$$GetImageLabelsSuccessfulImplCopyWith(
          _$GetImageLabelsSuccessfulImpl value, $Res Function(_$GetImageLabelsSuccessfulImpl) then) =
      __$$GetImageLabelsSuccessfulImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageLabel, String pendingId});
}

/// @nodoc
class __$$GetImageLabelsSuccessfulImplCopyWithImpl<$Res>
    extends _$GetImageLabelsCopyWithImpl<$Res, _$GetImageLabelsSuccessfulImpl>
    implements _$$GetImageLabelsSuccessfulImplCopyWith<$Res> {
  __$$GetImageLabelsSuccessfulImplCopyWithImpl(
      _$GetImageLabelsSuccessfulImpl _value, $Res Function(_$GetImageLabelsSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageLabel = null,
    Object? pendingId = null,
  }) {
    return _then(_$GetImageLabelsSuccessfulImpl(
      null == imageLabel
          ? _value.imageLabel
          : imageLabel // ignore: cast_nullable_to_non_nullable
              as String,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetImageLabelsSuccessfulImpl implements GetImageLabelsSuccessful {
  const _$GetImageLabelsSuccessfulImpl(this.imageLabel, [this.pendingId = _kGetImageLabelsPendingId]);

  @override
  final String imageLabel;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetImageLabels.successful(imageLabel: $imageLabel, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImageLabelsSuccessfulImpl &&
            (identical(other.imageLabel, imageLabel) || other.imageLabel == imageLabel) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageLabel, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImageLabelsSuccessfulImplCopyWith<_$GetImageLabelsSuccessfulImpl> get copyWith =>
      __$$GetImageLabelsSuccessfulImplCopyWithImpl<_$GetImageLabelsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath, String pendingId) start,
    required TResult Function(String imageLabel, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return successful(imageLabel, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath, String pendingId)? start,
    TResult? Function(String imageLabel, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return successful?.call(imageLabel, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath, String pendingId)? start,
    TResult Function(String imageLabel, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(imageLabel, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImageLabelsStart value) start,
    required TResult Function(GetImageLabelsSuccessful value) successful,
    required TResult Function(GetImageLabelsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImageLabelsStart value)? start,
    TResult? Function(GetImageLabelsSuccessful value)? successful,
    TResult? Function(GetImageLabelsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImageLabelsStart value)? start,
    TResult Function(GetImageLabelsSuccessful value)? successful,
    TResult Function(GetImageLabelsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetImageLabelsSuccessful implements GetImageLabels, ActionDone {
  const factory GetImageLabelsSuccessful(final String imageLabel, [final String pendingId]) =
      _$GetImageLabelsSuccessfulImpl;

  String get imageLabel;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$GetImageLabelsSuccessfulImplCopyWith<_$GetImageLabelsSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImageLabelsErrorImplCopyWith<$Res> implements $GetImageLabelsCopyWith<$Res> {
  factory _$$GetImageLabelsErrorImplCopyWith(
          _$GetImageLabelsErrorImpl value, $Res Function(_$GetImageLabelsErrorImpl) then) =
      __$$GetImageLabelsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class __$$GetImageLabelsErrorImplCopyWithImpl<$Res>
    extends _$GetImageLabelsCopyWithImpl<$Res, _$GetImageLabelsErrorImpl>
    implements _$$GetImageLabelsErrorImplCopyWith<$Res> {
  __$$GetImageLabelsErrorImplCopyWithImpl(
      _$GetImageLabelsErrorImpl _value, $Res Function(_$GetImageLabelsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
    Object? pendingId = null,
  }) {
    return _then(_$GetImageLabelsErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      null == pendingId
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetImageLabelsErrorImpl implements GetImageLabelsError {
  const _$GetImageLabelsErrorImpl(this.error, this.stackTrace, [this.pendingId = _kGetImageLabelsPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @override
  @JsonKey()
  final String pendingId;

  @override
  String toString() {
    return 'GetImageLabels.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetImageLabelsErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace) &&
            (identical(other.pendingId, pendingId) || other.pendingId == pendingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace, pendingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetImageLabelsErrorImplCopyWith<_$GetImageLabelsErrorImpl> get copyWith =>
      __$$GetImageLabelsErrorImplCopyWithImpl<_$GetImageLabelsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath, String pendingId) start,
    required TResult Function(String imageLabel, String pendingId) successful,
    required TResult Function(Object error, StackTrace stackTrace, String pendingId) error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath, String pendingId)? start,
    TResult? Function(String imageLabel, String pendingId)? successful,
    TResult? Function(Object error, StackTrace stackTrace, String pendingId)? error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath, String pendingId)? start,
    TResult Function(String imageLabel, String pendingId)? successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetImageLabelsStart value) start,
    required TResult Function(GetImageLabelsSuccessful value) successful,
    required TResult Function(GetImageLabelsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetImageLabelsStart value)? start,
    TResult? Function(GetImageLabelsSuccessful value)? successful,
    TResult? Function(GetImageLabelsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetImageLabelsStart value)? start,
    TResult Function(GetImageLabelsSuccessful value)? successful,
    TResult Function(GetImageLabelsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetImageLabelsError implements GetImageLabels, ActionDone, ErrorAction {
  const factory GetImageLabelsError(final Object error, final StackTrace stackTrace, [final String pendingId]) =
      _$GetImageLabelsErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  _$$GetImageLabelsErrorImplCopyWith<_$GetImageLabelsErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
