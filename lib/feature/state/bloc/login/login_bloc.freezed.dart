// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) userLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? userLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? userLoginEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) userLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? userLoginEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? userLoginEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginEventImplCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$UserLoginEventImplCopyWith(_$UserLoginEventImpl value,
          $Res Function(_$UserLoginEventImpl) then) =
      __$$UserLoginEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$UserLoginEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UserLoginEventImpl>
    implements _$$UserLoginEventImplCopyWith<$Res> {
  __$$UserLoginEventImplCopyWithImpl(
      _$UserLoginEventImpl _value, $Res Function(_$UserLoginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserLoginEventImpl implements UserLoginEvent {
  const _$UserLoginEventImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.userLoginEvent(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginEventImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginEventImplCopyWith<_$UserLoginEventImpl> get copyWith =>
      __$$UserLoginEventImplCopyWithImpl<_$UserLoginEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) userLoginEvent,
  }) {
    return userLoginEvent(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? userLoginEvent,
  }) {
    return userLoginEvent?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? userLoginEvent,
    required TResult orElse(),
  }) {
    if (userLoginEvent != null) {
      return userLoginEvent(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) userLoginEvent,
  }) {
    return userLoginEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserLoginEvent value)? userLoginEvent,
  }) {
    return userLoginEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? userLoginEvent,
    required TResult orElse(),
  }) {
    if (userLoginEvent != null) {
      return userLoginEvent(this);
    }
    return orElse();
  }
}

abstract class UserLoginEvent implements LoginEvent {
  const factory UserLoginEvent(
      {required final String username,
      required final String password}) = _$UserLoginEventImpl;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginEventImplCopyWith<_$UserLoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginUserModel? user) loginedUser,
    required TResult Function() loginFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginUserModel? user)? loginedUser,
    TResult? Function()? loginFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginUserModel? user)? loginedUser,
    TResult Function()? loginFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginedUser value) loginedUser,
    required TResult Function(LoginFailedState value) loginFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginedUser value)? loginedUser,
    TResult? Function(LoginFailedState value)? loginFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginedUser value)? loginedUser,
    TResult Function(LoginFailedState value)? loginFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginedUserImplCopyWith<$Res> {
  factory _$$LoginedUserImplCopyWith(
          _$LoginedUserImpl value, $Res Function(_$LoginedUserImpl) then) =
      __$$LoginedUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginUserModel? user});
}

/// @nodoc
class __$$LoginedUserImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginedUserImpl>
    implements _$$LoginedUserImplCopyWith<$Res> {
  __$$LoginedUserImplCopyWithImpl(
      _$LoginedUserImpl _value, $Res Function(_$LoginedUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$LoginedUserImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginUserModel?,
    ));
  }
}

/// @nodoc

class _$LoginedUserImpl implements LoginedUser {
  const _$LoginedUserImpl({required this.user});

  @override
  final LoginUserModel? user;

  @override
  String toString() {
    return 'LoginState.loginedUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginedUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginedUserImplCopyWith<_$LoginedUserImpl> get copyWith =>
      __$$LoginedUserImplCopyWithImpl<_$LoginedUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginUserModel? user) loginedUser,
    required TResult Function() loginFailedState,
  }) {
    return loginedUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginUserModel? user)? loginedUser,
    TResult? Function()? loginFailedState,
  }) {
    return loginedUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginUserModel? user)? loginedUser,
    TResult Function()? loginFailedState,
    required TResult orElse(),
  }) {
    if (loginedUser != null) {
      return loginedUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginedUser value) loginedUser,
    required TResult Function(LoginFailedState value) loginFailedState,
  }) {
    return loginedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginedUser value)? loginedUser,
    TResult? Function(LoginFailedState value)? loginFailedState,
  }) {
    return loginedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginedUser value)? loginedUser,
    TResult Function(LoginFailedState value)? loginFailedState,
    required TResult orElse(),
  }) {
    if (loginedUser != null) {
      return loginedUser(this);
    }
    return orElse();
  }
}

abstract class LoginedUser implements LoginState {
  const factory LoginedUser({required final LoginUserModel? user}) =
      _$LoginedUserImpl;

  LoginUserModel? get user;
  @JsonKey(ignore: true)
  _$$LoginedUserImplCopyWith<_$LoginedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFailedStateImplCopyWith<$Res> {
  factory _$$LoginFailedStateImplCopyWith(_$LoginFailedStateImpl value,
          $Res Function(_$LoginFailedStateImpl) then) =
      __$$LoginFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginFailedStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginFailedStateImpl>
    implements _$$LoginFailedStateImplCopyWith<$Res> {
  __$$LoginFailedStateImplCopyWithImpl(_$LoginFailedStateImpl _value,
      $Res Function(_$LoginFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginFailedStateImpl implements LoginFailedState {
  const _$LoginFailedStateImpl();

  @override
  String toString() {
    return 'LoginState.loginFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginUserModel? user) loginedUser,
    required TResult Function() loginFailedState,
  }) {
    return loginFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginUserModel? user)? loginedUser,
    TResult? Function()? loginFailedState,
  }) {
    return loginFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginUserModel? user)? loginedUser,
    TResult Function()? loginFailedState,
    required TResult orElse(),
  }) {
    if (loginFailedState != null) {
      return loginFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginedUser value) loginedUser,
    required TResult Function(LoginFailedState value) loginFailedState,
  }) {
    return loginFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginedUser value)? loginedUser,
    TResult? Function(LoginFailedState value)? loginFailedState,
  }) {
    return loginFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginedUser value)? loginedUser,
    TResult Function(LoginFailedState value)? loginFailedState,
    required TResult orElse(),
  }) {
    if (loginFailedState != null) {
      return loginFailedState(this);
    }
    return orElse();
  }
}

abstract class LoginFailedState implements LoginState {
  const factory LoginFailedState() = _$LoginFailedStateImpl;
}
