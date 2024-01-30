// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cartoperations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartoperationsEvent {
  Object get cartitem => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InsertCartModel cartitem) insertTOCart,
    required TResult Function(DeleteCartModel cartitem) deleteCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InsertCartModel cartitem)? insertTOCart,
    TResult? Function(DeleteCartModel cartitem)? deleteCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InsertCartModel cartitem)? insertTOCart,
    TResult Function(DeleteCartModel cartitem)? deleteCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsertTOCart value) insertTOCart,
    required TResult Function(DeleteCartItem value) deleteCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsertTOCart value)? insertTOCart,
    TResult? Function(DeleteCartItem value)? deleteCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsertTOCart value)? insertTOCart,
    TResult Function(DeleteCartItem value)? deleteCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartoperationsEventCopyWith<$Res> {
  factory $CartoperationsEventCopyWith(
          CartoperationsEvent value, $Res Function(CartoperationsEvent) then) =
      _$CartoperationsEventCopyWithImpl<$Res, CartoperationsEvent>;
}

/// @nodoc
class _$CartoperationsEventCopyWithImpl<$Res, $Val extends CartoperationsEvent>
    implements $CartoperationsEventCopyWith<$Res> {
  _$CartoperationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InsertTOCartImplCopyWith<$Res> {
  factory _$$InsertTOCartImplCopyWith(
          _$InsertTOCartImpl value, $Res Function(_$InsertTOCartImpl) then) =
      __$$InsertTOCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InsertCartModel cartitem});
}

/// @nodoc
class __$$InsertTOCartImplCopyWithImpl<$Res>
    extends _$CartoperationsEventCopyWithImpl<$Res, _$InsertTOCartImpl>
    implements _$$InsertTOCartImplCopyWith<$Res> {
  __$$InsertTOCartImplCopyWithImpl(
      _$InsertTOCartImpl _value, $Res Function(_$InsertTOCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartitem = null,
  }) {
    return _then(_$InsertTOCartImpl(
      cartitem: null == cartitem
          ? _value.cartitem
          : cartitem // ignore: cast_nullable_to_non_nullable
              as InsertCartModel,
    ));
  }
}

/// @nodoc

class _$InsertTOCartImpl implements InsertTOCart {
  const _$InsertTOCartImpl({required this.cartitem});

  @override
  final InsertCartModel cartitem;

  @override
  String toString() {
    return 'CartoperationsEvent.insertTOCart(cartitem: $cartitem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertTOCartImpl &&
            (identical(other.cartitem, cartitem) ||
                other.cartitem == cartitem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartitem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertTOCartImplCopyWith<_$InsertTOCartImpl> get copyWith =>
      __$$InsertTOCartImplCopyWithImpl<_$InsertTOCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InsertCartModel cartitem) insertTOCart,
    required TResult Function(DeleteCartModel cartitem) deleteCartItem,
  }) {
    return insertTOCart(cartitem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InsertCartModel cartitem)? insertTOCart,
    TResult? Function(DeleteCartModel cartitem)? deleteCartItem,
  }) {
    return insertTOCart?.call(cartitem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InsertCartModel cartitem)? insertTOCart,
    TResult Function(DeleteCartModel cartitem)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (insertTOCart != null) {
      return insertTOCart(cartitem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsertTOCart value) insertTOCart,
    required TResult Function(DeleteCartItem value) deleteCartItem,
  }) {
    return insertTOCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsertTOCart value)? insertTOCart,
    TResult? Function(DeleteCartItem value)? deleteCartItem,
  }) {
    return insertTOCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsertTOCart value)? insertTOCart,
    TResult Function(DeleteCartItem value)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (insertTOCart != null) {
      return insertTOCart(this);
    }
    return orElse();
  }
}

abstract class InsertTOCart implements CartoperationsEvent {
  const factory InsertTOCart({required final InsertCartModel cartitem}) =
      _$InsertTOCartImpl;

  @override
  InsertCartModel get cartitem;
  @JsonKey(ignore: true)
  _$$InsertTOCartImplCopyWith<_$InsertTOCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCartItemImplCopyWith<$Res> {
  factory _$$DeleteCartItemImplCopyWith(_$DeleteCartItemImpl value,
          $Res Function(_$DeleteCartItemImpl) then) =
      __$$DeleteCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteCartModel cartitem});
}

/// @nodoc
class __$$DeleteCartItemImplCopyWithImpl<$Res>
    extends _$CartoperationsEventCopyWithImpl<$Res, _$DeleteCartItemImpl>
    implements _$$DeleteCartItemImplCopyWith<$Res> {
  __$$DeleteCartItemImplCopyWithImpl(
      _$DeleteCartItemImpl _value, $Res Function(_$DeleteCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartitem = null,
  }) {
    return _then(_$DeleteCartItemImpl(
      cartitem: null == cartitem
          ? _value.cartitem
          : cartitem // ignore: cast_nullable_to_non_nullable
              as DeleteCartModel,
    ));
  }
}

/// @nodoc

class _$DeleteCartItemImpl implements DeleteCartItem {
  const _$DeleteCartItemImpl({required this.cartitem});

  @override
  final DeleteCartModel cartitem;

  @override
  String toString() {
    return 'CartoperationsEvent.deleteCartItem(cartitem: $cartitem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartItemImpl &&
            (identical(other.cartitem, cartitem) ||
                other.cartitem == cartitem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartitem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartItemImplCopyWith<_$DeleteCartItemImpl> get copyWith =>
      __$$DeleteCartItemImplCopyWithImpl<_$DeleteCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InsertCartModel cartitem) insertTOCart,
    required TResult Function(DeleteCartModel cartitem) deleteCartItem,
  }) {
    return deleteCartItem(cartitem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InsertCartModel cartitem)? insertTOCart,
    TResult? Function(DeleteCartModel cartitem)? deleteCartItem,
  }) {
    return deleteCartItem?.call(cartitem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InsertCartModel cartitem)? insertTOCart,
    TResult Function(DeleteCartModel cartitem)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (deleteCartItem != null) {
      return deleteCartItem(cartitem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InsertTOCart value) insertTOCart,
    required TResult Function(DeleteCartItem value) deleteCartItem,
  }) {
    return deleteCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InsertTOCart value)? insertTOCart,
    TResult? Function(DeleteCartItem value)? deleteCartItem,
  }) {
    return deleteCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InsertTOCart value)? insertTOCart,
    TResult Function(DeleteCartItem value)? deleteCartItem,
    required TResult orElse(),
  }) {
    if (deleteCartItem != null) {
      return deleteCartItem(this);
    }
    return orElse();
  }
}

abstract class DeleteCartItem implements CartoperationsEvent {
  const factory DeleteCartItem({required final DeleteCartModel cartitem}) =
      _$DeleteCartItemImpl;

  @override
  DeleteCartModel get cartitem;
  @JsonKey(ignore: true)
  _$$DeleteCartItemImplCopyWith<_$DeleteCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartoperationsState {
  InsetCartRespModel? get respModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InsetCartRespModel? respModel) insertdatatocart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InsetCartRespModel? respModel)? insertdatatocart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InsetCartRespModel? respModel)? insertdatatocart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Insertdatatocart value) insertdatatocart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Insertdatatocart value)? insertdatatocart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Insertdatatocart value)? insertdatatocart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartoperationsStateCopyWith<CartoperationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartoperationsStateCopyWith<$Res> {
  factory $CartoperationsStateCopyWith(
          CartoperationsState value, $Res Function(CartoperationsState) then) =
      _$CartoperationsStateCopyWithImpl<$Res, CartoperationsState>;
  @useResult
  $Res call({InsetCartRespModel? respModel});
}

/// @nodoc
class _$CartoperationsStateCopyWithImpl<$Res, $Val extends CartoperationsState>
    implements $CartoperationsStateCopyWith<$Res> {
  _$CartoperationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? respModel = freezed,
  }) {
    return _then(_value.copyWith(
      respModel: freezed == respModel
          ? _value.respModel
          : respModel // ignore: cast_nullable_to_non_nullable
              as InsetCartRespModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsertdatatocartImplCopyWith<$Res>
    implements $CartoperationsStateCopyWith<$Res> {
  factory _$$InsertdatatocartImplCopyWith(_$InsertdatatocartImpl value,
          $Res Function(_$InsertdatatocartImpl) then) =
      __$$InsertdatatocartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InsetCartRespModel? respModel});
}

/// @nodoc
class __$$InsertdatatocartImplCopyWithImpl<$Res>
    extends _$CartoperationsStateCopyWithImpl<$Res, _$InsertdatatocartImpl>
    implements _$$InsertdatatocartImplCopyWith<$Res> {
  __$$InsertdatatocartImplCopyWithImpl(_$InsertdatatocartImpl _value,
      $Res Function(_$InsertdatatocartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? respModel = freezed,
  }) {
    return _then(_$InsertdatatocartImpl(
      respModel: freezed == respModel
          ? _value.respModel
          : respModel // ignore: cast_nullable_to_non_nullable
              as InsetCartRespModel?,
    ));
  }
}

/// @nodoc

class _$InsertdatatocartImpl implements Insertdatatocart {
  const _$InsertdatatocartImpl({required this.respModel});

  @override
  final InsetCartRespModel? respModel;

  @override
  String toString() {
    return 'CartoperationsState.insertdatatocart(respModel: $respModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertdatatocartImpl &&
            (identical(other.respModel, respModel) ||
                other.respModel == respModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, respModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertdatatocartImplCopyWith<_$InsertdatatocartImpl> get copyWith =>
      __$$InsertdatatocartImplCopyWithImpl<_$InsertdatatocartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InsetCartRespModel? respModel) insertdatatocart,
  }) {
    return insertdatatocart(respModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InsetCartRespModel? respModel)? insertdatatocart,
  }) {
    return insertdatatocart?.call(respModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InsetCartRespModel? respModel)? insertdatatocart,
    required TResult orElse(),
  }) {
    if (insertdatatocart != null) {
      return insertdatatocart(respModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Insertdatatocart value) insertdatatocart,
  }) {
    return insertdatatocart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Insertdatatocart value)? insertdatatocart,
  }) {
    return insertdatatocart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Insertdatatocart value)? insertdatatocart,
    required TResult orElse(),
  }) {
    if (insertdatatocart != null) {
      return insertdatatocart(this);
    }
    return orElse();
  }
}

abstract class Insertdatatocart implements CartoperationsState {
  const factory Insertdatatocart(
      {required final InsetCartRespModel? respModel}) = _$InsertdatatocartImpl;

  @override
  InsetCartRespModel? get respModel;
  @override
  @JsonKey(ignore: true)
  _$$InsertdatatocartImplCopyWith<_$InsertdatatocartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
