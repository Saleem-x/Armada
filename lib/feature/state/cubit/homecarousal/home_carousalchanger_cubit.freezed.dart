// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_carousalchanger_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeCarousalchangerState {
  int get idx => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idx) currentpage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int idx)? currentpage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idx)? currentpage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Currentpage value) currentpage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Currentpage value)? currentpage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Currentpage value)? currentpage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeCarousalchangerStateCopyWith<HomeCarousalchangerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeCarousalchangerStateCopyWith<$Res> {
  factory $HomeCarousalchangerStateCopyWith(HomeCarousalchangerState value,
          $Res Function(HomeCarousalchangerState) then) =
      _$HomeCarousalchangerStateCopyWithImpl<$Res, HomeCarousalchangerState>;
  @useResult
  $Res call({int idx});
}

/// @nodoc
class _$HomeCarousalchangerStateCopyWithImpl<$Res,
        $Val extends HomeCarousalchangerState>
    implements $HomeCarousalchangerStateCopyWith<$Res> {
  _$HomeCarousalchangerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentpageImplCopyWith<$Res>
    implements $HomeCarousalchangerStateCopyWith<$Res> {
  factory _$$CurrentpageImplCopyWith(
          _$CurrentpageImpl value, $Res Function(_$CurrentpageImpl) then) =
      __$$CurrentpageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idx});
}

/// @nodoc
class __$$CurrentpageImplCopyWithImpl<$Res>
    extends _$HomeCarousalchangerStateCopyWithImpl<$Res, _$CurrentpageImpl>
    implements _$$CurrentpageImplCopyWith<$Res> {
  __$$CurrentpageImplCopyWithImpl(
      _$CurrentpageImpl _value, $Res Function(_$CurrentpageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
  }) {
    return _then(_$CurrentpageImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CurrentpageImpl implements Currentpage {
  const _$CurrentpageImpl({required this.idx});

  @override
  final int idx;

  @override
  String toString() {
    return 'HomeCarousalchangerState.currentpage(idx: $idx)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentpageImpl &&
            (identical(other.idx, idx) || other.idx == idx));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idx);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentpageImplCopyWith<_$CurrentpageImpl> get copyWith =>
      __$$CurrentpageImplCopyWithImpl<_$CurrentpageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idx) currentpage,
  }) {
    return currentpage(idx);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int idx)? currentpage,
  }) {
    return currentpage?.call(idx);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idx)? currentpage,
    required TResult orElse(),
  }) {
    if (currentpage != null) {
      return currentpage(idx);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Currentpage value) currentpage,
  }) {
    return currentpage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Currentpage value)? currentpage,
  }) {
    return currentpage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Currentpage value)? currentpage,
    required TResult orElse(),
  }) {
    if (currentpage != null) {
      return currentpage(this);
    }
    return orElse();
  }
}

abstract class Currentpage implements HomeCarousalchangerState {
  const factory Currentpage({required final int idx}) = _$CurrentpageImpl;

  @override
  int get idx;
  @override
  @JsonKey(ignore: true)
  _$$CurrentpageImplCopyWith<_$CurrentpageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
