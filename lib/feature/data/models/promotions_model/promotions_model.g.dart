// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionsModel _$PromotionsModelFromJson(Map<String, dynamic> json) =>
    PromotionsModel(
      prmId: json['prm_ID'] as String?,
      prmImage: json['prm_Image'] as String?,
      prmName: json['prm_Name'] as String?,
      rcpEndDate: json['rcp_EndDate'] as String?,
      rcpCusId: json['rcp_cus_ID'] as String?,
      itmCount: json['itmCount'] as String?,
      prtName: json['prt_Name'] as String?,
      rcpFromDate: json['rcp_FromDate'] as String?,
      prtValue: json['prt_Value'] as String?,
      prmArabicName: json['prm_ArabicName'] as String?,
      prtArabicName: json['prt_ArabicName'] as String?,
    );

Map<String, dynamic> _$PromotionsModelToJson(PromotionsModel instance) =>
    <String, dynamic>{
      'prm_ID': instance.prmId,
      'prm_Image': instance.prmImage,
      'prm_Name': instance.prmName,
      'rcp_EndDate': instance.rcpEndDate,
      'rcp_cus_ID': instance.rcpCusId,
      'itmCount': instance.itmCount,
      'prt_Name': instance.prtName,
      'rcp_FromDate': instance.rcpFromDate,
      'prt_Value': instance.prtValue,
      'prm_ArabicName': instance.prmArabicName,
      'prt_ArabicName': instance.prtArabicName,
    };
