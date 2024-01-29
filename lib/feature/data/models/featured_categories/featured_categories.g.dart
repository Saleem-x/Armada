// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeaturedCategories _$FeaturedCategoriesFromJson(Map<String, dynamic> json) =>
    FeaturedCategories(
      fctName: json['fct_Name'] as String?,
      fctImage: json['fct_Image'] as String?,
      tctCatId: json['tct_cat_ID'] as String?,
      catName: json['cat_Name'] as String?,
    );

Map<String, dynamic> _$FeaturedCategoriesToJson(FeaturedCategories instance) =>
    <String, dynamic>{
      'fct_Name': instance.fctName,
      'fct_Image': instance.fctImage,
      'tct_cat_ID': instance.tctCatId,
      'cat_Name': instance.catName,
    };
