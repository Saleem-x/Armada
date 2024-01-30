// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_promotions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivePromotions _$ActivePromotionsFromJson(Map<String, dynamic> json) =>
    ActivePromotions(
      prmId: json['prm_ID'] as String?,
      prmName: json['prm_Name'] as String?,
      rcpCusId: json['rcp_cus_ID'] as String?,
      prtName: json['prt_Name'] as String?,
      prtValue: json['prt_Value'] as String?,
      prmArabicName: json['prm_ArabicName'] as String?,
      prtArabicName: json['prt_ArabicName'] as String?,
    );

Map<String, dynamic> _$ActivePromotionsToJson(ActivePromotions instance) =>
    <String, dynamic>{
      'prm_ID': instance.prmId,
      'prm_Name': instance.prmName,
      'rcp_cus_ID': instance.rcpCusId,
      'prt_Name': instance.prtName,
      'prt_Value': instance.prtValue,
      'prm_ArabicName': instance.prmArabicName,
      'prt_ArabicName': instance.prtArabicName,
    };
