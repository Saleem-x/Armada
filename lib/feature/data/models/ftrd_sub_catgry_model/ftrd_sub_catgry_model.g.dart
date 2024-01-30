// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ftrd_sub_catgry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FtrdSubCatgryModel _$FtrdSubCatgryModelFromJson(Map<String, dynamic> json) =>
    FtrdSubCatgryModel(
      sctImage: json['sct_Image'] as String?,
      sctId: json['sct_ID'] as int?,
      sctName: json['sct_Name'] as String?,
      itmCount: json['itmCount'] as int?,
      sctCatId: json['sct_cat_ID'] as int?,
      sctArabicName: json['sct_ArabicName'] as String?,
    );

Map<String, dynamic> _$FtrdSubCatgryModelToJson(FtrdSubCatgryModel instance) =>
    <String, dynamic>{
      'sct_Image': instance.sctImage,
      'sct_ID': instance.sctId,
      'sct_Name': instance.sctName,
      'itmCount': instance.itmCount,
      'sct_cat_ID': instance.sctCatId,
      'sct_ArabicName': instance.sctArabicName,
    };
