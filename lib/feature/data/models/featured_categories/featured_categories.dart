import 'package:json_annotation/json_annotation.dart';

part 'featured_categories.g.dart';

@JsonSerializable()
class FeaturedCategories {
  @JsonKey(name: 'fct_Name')
  String? fctName;
  @JsonKey(name: 'fct_Image')
  String? fctImage;
  @JsonKey(name: 'tct_cat_ID')
  String? tctCatId;
  @JsonKey(name: 'cat_Name')
  String? catName;

  FeaturedCategories({
    this.fctName,
    this.fctImage,
    this.tctCatId,
    this.catName,
  });

  factory FeaturedCategories.fromJson(Map<String, dynamic> json) {
    return _$FeaturedCategoriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FeaturedCategoriesToJson(this);
}
