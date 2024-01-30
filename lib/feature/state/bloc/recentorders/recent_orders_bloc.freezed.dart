// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecentOrdersEvent {
  String get userID => throw _privateConstructorUsedError;
  String get cusID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String cusID) getRecentOrdersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String cusID)? getRecentOrdersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String cusID)? getRecentOrdersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecentOrdersEvent value) getRecentOrdersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecentOrdersEvent value)? getRecentOrdersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecentOrdersEvent value)? getRecentOrdersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentOrdersEventCopyWith<RecentOrdersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentOrdersEventCopyWith<$Res> {
  factory $RecentOrdersEventCopyWith(
          RecentOrdersEvent value, $Res Function(RecentOrdersEvent) then) =
      _$RecentOrdersEventCopyWithImpl<$Res, RecentOrdersEvent>;
  @useResult
  $Res call({String userID, String cusID});
}

/// @nodoc
class _$RecentOrdersEventCopyWithImpl<$Res, $Val extends RecentOrdersEvent>
    implements $RecentOrdersEventCopyWith<$Res> {
  _$RecentOrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? cusID = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      cusID: null == cusID
          ? _value.cusID
          : cusID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRecentOrdersEventImplCopyWith<$Res>
    implements $RecentOrdersEventCopyWith<$Res> {
  factory _$$GetRecentOrdersEventImplCopyWith(_$GetRecentOrdersEventImpl value,
          $Res Function(_$GetRecentOrdersEventImpl) then) =
      __$$GetRecentOrdersEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userID, String cusID});
}

/// @nodoc
class __$$GetRecentOrdersEventImplCopyWithImpl<$Res>
    extends _$RecentOrdersEventCopyWithImpl<$Res, _$GetRecentOrdersEventImpl>
    implements _$$GetRecentOrdersEventImplCopyWith<$Res> {
  __$$GetRecentOrdersEventImplCopyWithImpl(_$GetRecentOrdersEventImpl _value,
      $Res Function(_$GetRecentOrdersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? cusID = null,
  }) {
    return _then(_$GetRecentOrdersEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      cusID: null == cusID
          ? _value.cusID
          : cusID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRecentOrdersEventImpl implements GetRecentOrdersEvent {
  const _$GetRecentOrdersEventImpl({required this.userID, required this.cusID});

  @override
  final String userID;
  @override
  final String cusID;

  @override
  String toString() {
    return 'RecentOrdersEvent.getRecentOrdersEvent(userID: $userID, cusID: $cusID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecentOrdersEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.cusID, cusID) || other.cusID == cusID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, cusID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecentOrdersEventImplCopyWith<_$GetRecentOrdersEventImpl>
      get copyWith =>
          __$$GetRecentOrdersEventImplCopyWithImpl<_$GetRecentOrdersEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String cusID) getRecentOrdersEvent,
  }) {
    return getRecentOrdersEvent(userID, cusID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String cusID)? getRecentOrdersEvent,
  }) {
    return getRecentOrdersEvent?.call(userID, cusID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String cusID)? getRecentOrdersEvent,
    required TResult orElse(),
  }) {
    if (getRecentOrdersEvent != null) {
      return getRecentOrdersEvent(userID, cusID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecentOrdersEvent value) getRecentOrdersEvent,
  }) {
    return getRecentOrdersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecentOrdersEvent value)? getRecentOrdersEvent,
  }) {
    return getRecentOrdersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecentOrdersEvent value)? getRecentOrdersEvent,
    required TResult orElse(),
  }) {
    if (getRecentOrdersEvent != null) {
      return getRecentOrdersEvent(this);
    }
    return orElse();
  }
}

abstract class GetRecentOrdersEvent implements RecentOrdersEvent {
  const factory GetRecentOrdersEvent(
      {required final String userID,
      required final String cusID}) = _$GetRecentOrdersEventImpl;

  @override
  String get userID;
  @override
  String get cusID;
  @override
  @JsonKey(ignore: true)
  _$$GetRecentOrdersEventImplCopyWith<_$GetRecentOrdersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecentOrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecentOrdered>? recentorders)
        getRecentOrdersState,
    required TResult Function() getrecentfailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecentOrdered>? recentorders)? getRecentOrdersState,
    TResult? Function()? getrecentfailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecentOrdered>? recentorders)? getRecentOrdersState,
    TResult Function()? getrecentfailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecentOrdersState value) getRecentOrdersState,
    required TResult Function(Getrecentfailed value) getrecentfailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecentOrdersState value)? getRecentOrdersState,
    TResult? Function(Getrecentfailed value)? getrecentfailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecentOrdersState value)? getRecentOrdersState,
    TResult Function(Getrecentfailed value)? getrecentfailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentOrdersStateCopyWith<$Res> {
  factory $RecentOrdersStateCopyWith(
          RecentOrdersState value, $Res Function(RecentOrdersState) then) =
      _$RecentOrdersStateCopyWithImpl<$Res, RecentOrdersState>;
}

/// @nodoc
class _$RecentOrdersStateCopyWithImpl<$Res, $Val extends RecentOrdersState>
    implements $RecentOrdersStateCopyWith<$Res> {
  _$RecentOrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetRecentOrdersStateImplCopyWith<$Res> {
  factory _$$GetRecentOrdersStateImplCopyWith(_$GetRecentOrdersStateImpl value,
          $Res Function(_$GetRecentOrdersStateImpl) then) =
      __$$GetRecentOrdersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecentOrdered>? recentorders});
}

/// @nodoc
class __$$GetRecentOrdersStateImplCopyWithImpl<$Res>
    extends _$RecentOrdersStateCopyWithImpl<$Res, _$GetRecentOrdersStateImpl>
    implements _$$GetRecentOrdersStateImplCopyWith<$Res> {
  __$$GetRecentOrdersStateImplCopyWithImpl(_$GetRecentOrdersStateImpl _value,
      $Res Function(_$GetRecentOrdersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentorders = freezed,
  }) {
    return _then(_$GetRecentOrdersStateImpl(
      recentorders: freezed == recentorders
          ? _value._recentorders
          : recentorders // ignore: cast_nullable_to_non_nullable
              as List<RecentOrdered>?,
    ));
  }
}

/// @nodoc

class _$GetRecentOrdersStateImpl implements GetRecentOrdersState {
  const _$GetRecentOrdersStateImpl(
      {required final List<RecentOrdered>? recentorders})
      : _recentorders = recentorders;

  final List<RecentOrdered>? _recentorders;
  @override
  List<RecentOrdered>? get recentorders {
    final value = _recentorders;
    if (value == null) return null;
    if (_recentorders is EqualUnmodifiableListView) return _recentorders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RecentOrdersState.getRecentOrdersState(recentorders: $recentorders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRecentOrdersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._recentorders, _recentorders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recentorders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRecentOrdersStateImplCopyWith<_$GetRecentOrdersStateImpl>
      get copyWith =>
          __$$GetRecentOrdersStateImplCopyWithImpl<_$GetRecentOrdersStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecentOrdered>? recentorders)
        getRecentOrdersState,
    required TResult Function() getrecentfailed,
  }) {
    return getRecentOrdersState(recentorders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecentOrdered>? recentorders)? getRecentOrdersState,
    TResult? Function()? getrecentfailed,
  }) {
    return getRecentOrdersState?.call(recentorders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecentOrdered>? recentorders)? getRecentOrdersState,
    TResult Function()? getrecentfailed,
    required TResult orElse(),
  }) {
    if (getRecentOrdersState != null) {
      return getRecentOrdersState(recentorders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecentOrdersState value) getRecentOrdersState,
    required TResult Function(Getrecentfailed value) getrecentfailed,
  }) {
    return getRecentOrdersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecentOrdersState value)? getRecentOrdersState,
    TResult? Function(Getrecentfailed value)? getrecentfailed,
  }) {
    return getRecentOrdersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecentOrdersState value)? getRecentOrdersState,
    TResult Function(Getrecentfailed value)? getrecentfailed,
    required TResult orElse(),
  }) {
    if (getRecentOrdersState != null) {
      return getRecentOrdersState(this);
    }
    return orElse();
  }
}

abstract class GetRecentOrdersState implements RecentOrdersState {
  const factory GetRecentOrdersState(
          {required final List<RecentOrdered>? recentorders}) =
      _$GetRecentOrdersStateImpl;

  List<RecentOrdered>? get recentorders;
  @JsonKey(ignore: true)
  _$$GetRecentOrdersStateImplCopyWith<_$GetRecentOrdersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetrecentfailedImplCopyWith<$Res> {
  factory _$$GetrecentfailedImplCopyWith(_$GetrecentfailedImpl value,
          $Res Function(_$GetrecentfailedImpl) then) =
      __$$GetrecentfailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetrecentfailedImplCopyWithImpl<$Res>
    extends _$RecentOrdersStateCopyWithImpl<$Res, _$GetrecentfailedImpl>
    implements _$$GetrecentfailedImplCopyWith<$Res> {
  __$$GetrecentfailedImplCopyWithImpl(
      _$GetrecentfailedImpl _value, $Res Function(_$GetrecentfailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetrecentfailedImpl implements Getrecentfailed {
  const _$GetrecentfailedImpl();

  @override
  String toString() {
    return 'RecentOrdersState.getrecentfailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetrecentfailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecentOrdered>? recentorders)
        getRecentOrdersState,
    required TResult Function() getrecentfailed,
  }) {
    return getrecentfailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecentOrdered>? recentorders)? getRecentOrdersState,
    TResult? Function()? getrecentfailed,
  }) {
    return getrecentfailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecentOrdered>? recentorders)? getRecentOrdersState,
    TResult Function()? getrecentfailed,
    required TResult orElse(),
  }) {
    if (getrecentfailed != null) {
      return getrecentfailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecentOrdersState value) getRecentOrdersState,
    required TResult Function(Getrecentfailed value) getrecentfailed,
  }) {
    return getrecentfailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRecentOrdersState value)? getRecentOrdersState,
    TResult? Function(Getrecentfailed value)? getrecentfailed,
  }) {
    return getrecentfailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecentOrdersState value)? getRecentOrdersState,
    TResult Function(Getrecentfailed value)? getrecentfailed,
    required TResult orElse(),
  }) {
    if (getrecentfailed != null) {
      return getrecentfailed(this);
    }
    return orElse();
  }
}

abstract class Getrecentfailed implements RecentOrdersState {
  const factory Getrecentfailed() = _$GetrecentfailedImpl;
}
