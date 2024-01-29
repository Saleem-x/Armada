// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_ordered.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecentOrdered _$RecentOrderedFromJson(Map<String, dynamic> json) =>
    RecentOrdered(
      catName: json['catName'] as String?,
      catId: json['catID'] as String?,
      itmId: json['itmID'] as String?,
      itmName: json['itmName'] as String?,
      itmImage: json['itmImage'] as String?,
      sctName: json['sctName'] as String?,
      itmCount: json['itmCount'] as String?,
      chuom: json['CHUOM'] as String?,
      chQty: json['CHQty'] as String?,
      cluom: json['CLUOM'] as String?,
      clQty: json['CLQty'] as String?,
      itmArabicName: json['itm_ArabicName'] as String?,
      sctArabicName: json['sct_ArabicName'] as String?,
      catArabicName: json['cat_ArabicName'] as String?,
      itmCode: json['itmCode'] as String?,
      freqOrder: json['FreqOrder'] as String?,
      itmType: json['itm_Type'] as String?,
      uom: (json['UOM'] as List<dynamic>?)
          ?.map((e) => Uom.fromJson(e as Map<String, dynamic>))
          .toList(),
      brdName: json['brd_Name'] as String?,
    );

Map<String, dynamic> _$RecentOrderedToJson(RecentOrdered instance) =>
    <String, dynamic>{
      'catName': instance.catName,
      'catID': instance.catId,
      'itmID': instance.itmId,
      'itmName': instance.itmName,
      'itmImage': instance.itmImage,
      'sctName': instance.sctName,
      'itmCount': instance.itmCount,
      'CHUOM': instance.chuom,
      'CHQty': instance.chQty,
      'CLUOM': instance.cluom,
      'CLQty': instance.clQty,
      'itm_ArabicName': instance.itmArabicName,
      'sct_ArabicName': instance.sctArabicName,
      'cat_ArabicName': instance.catArabicName,
      'itmCode': instance.itmCode,
      'FreqOrder': instance.freqOrder,
      'itm_Type': instance.itmType,
      'UOM': instance.uom,
      'brd_Name': instance.brdName,
    };
