// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterHomeState {
  int get count => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) changeCountState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? changeCountState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? changeCountState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCountState value) changeCountState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCountState value)? changeCountState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCountState value)? changeCountState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterHomeStateCopyWith<CounterHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterHomeStateCopyWith<$Res> {
  factory $CounterHomeStateCopyWith(
          CounterHomeState value, $Res Function(CounterHomeState) then) =
      _$CounterHomeStateCopyWithImpl<$Res, CounterHomeState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$CounterHomeStateCopyWithImpl<$Res, $Val extends CounterHomeState>
    implements $CounterHomeStateCopyWith<$Res> {
  _$CounterHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeCountStateImplCopyWith<$Res>
    implements $CounterHomeStateCopyWith<$Res> {
  factory _$$ChangeCountStateImplCopyWith(_$ChangeCountStateImpl value,
          $Res Function(_$ChangeCountStateImpl) then) =
      __$$ChangeCountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$ChangeCountStateImplCopyWithImpl<$Res>
    extends _$CounterHomeStateCopyWithImpl<$Res, _$ChangeCountStateImpl>
    implements _$$ChangeCountStateImplCopyWith<$Res> {
  __$$ChangeCountStateImplCopyWithImpl(_$ChangeCountStateImpl _value,
      $Res Function(_$ChangeCountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$ChangeCountStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCountStateImpl implements ChangeCountState {
  const _$ChangeCountStateImpl({required this.count});

  @override
  final int count;

  @override
  String toString() {
    return 'CounterHomeState.changeCountState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCountStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCountStateImplCopyWith<_$ChangeCountStateImpl> get copyWith =>
      __$$ChangeCountStateImplCopyWithImpl<_$ChangeCountStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count) changeCountState,
  }) {
    return changeCountState(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count)? changeCountState,
  }) {
    return changeCountState?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count)? changeCountState,
    required TResult orElse(),
  }) {
    if (changeCountState != null) {
      return changeCountState(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeCountState value) changeCountState,
  }) {
    return changeCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeCountState value)? changeCountState,
  }) {
    return changeCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeCountState value)? changeCountState,
    required TResult orElse(),
  }) {
    if (changeCountState != null) {
      return changeCountState(this);
    }
    return orElse();
  }
}

abstract class ChangeCountState implements CounterHomeState {
  const factory ChangeCountState({required final int count}) =
      _$ChangeCountStateImpl;

  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$ChangeCountStateImplCopyWith<_$ChangeCountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
