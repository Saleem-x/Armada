// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertCartModel _$InsertCartModelFromJson(Map<String, dynamic> json) =>
    InsertCartModel(
      userId: json['userID'] as String?,
      cusId: json['cusID'] as String?,
      itmId: json['itm_ID'] as String?,
      higherQty: json['HigherQty'] as String?,
      higherUom: json['HigherUOM'] as String?,
      lowerQty: json['LowerQty'] as String?,
      lowerUom: json['lowerUOM'] as String?,
    );

Map<String, dynamic> _$InsertCartModelToJson(InsertCartModel instance) =>
    <String, dynamic>{
      'userID': instance.userId,
      'cusID': instance.cusId,
      'itm_ID': instance.itmId,
      'HigherQty': instance.higherQty,
      'HigherUOM': instance.higherUom,
      'LowerQty': instance.lowerQty,
      'lowerUOM': instance.lowerUom,
    };
