// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannersModel _$BannersModelFromJson(Map<String, dynamic> json) => BannersModel(
      heading: json['Heading'] as String?,
      image: json['image'] as String?,
      shortMessage: json['ShortMessage'] as String?,
      arabicHeading: json['ArabicHeading'] as String?,
      arabicShortMessage: json['ArabicShortMessage'] as String?,
    );

Map<String, dynamic> _$BannersModelToJson(BannersModel instance) =>
    <String, dynamic>{
      'Heading': instance.heading,
      'image': instance.image,
      'ShortMessage': instance.shortMessage,
      'ArabicHeading': instance.arabicHeading,
      'ArabicShortMessage': instance.arabicShortMessage,
    };
