// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Uom _$UomFromJson(Map<String, dynamic> json) => Uom(
      uomId: json['uomID'] as String?,
      uomName: json['uomName'] as String?,
      upc: json['UPC'] as String?,
      isDefault: json['IsDefault'] as String?,
      offerprice: json['Offerprice'] as String?,
      standardPrice: json['StandardPrice'] as String?,
      cusId: json['cusID'],
    );

Map<String, dynamic> _$UomToJson(Uom instance) => <String, dynamic>{
      'uomID': instance.uomId,
      'uomName': instance.uomName,
      'UPC': instance.upc,
      'IsDefault': instance.isDefault,
      'Offerprice': instance.offerprice,
      'StandardPrice': instance.standardPrice,
      'cusID': instance.cusId,
    };
