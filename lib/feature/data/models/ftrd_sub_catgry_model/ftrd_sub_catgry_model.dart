import 'package:json_annotation/json_annotation.dart';

part 'ftrd_sub_catgry_model.g.dart';

@JsonSerializable()
class FtrdSubCatgryModel {
  @JsonKey(name: 'sct_Image')
  String? sctImage;
  @JsonKey(name: 'sct_ID')
  int? sctId;
  @JsonKey(name: 'sct_Name')
  String? sctName;
  int? itmCount;
  @JsonKey(name: 'sct_cat_ID')
  int? sctCatId;
  @JsonKey(name: 'sct_ArabicName')
  String? sctArabicName;

  FtrdSubCatgryModel({
    this.sctImage,
    this.sctId,
    this.sctName,
    this.itmCount,
    this.sctCatId,
    this.sctArabicName,
  });

  factory FtrdSubCatgryModel.fromJson(Map<String, dynamic> json) {
    return _$FtrdSubCatgryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FtrdSubCatgryModelToJson(this);
}
