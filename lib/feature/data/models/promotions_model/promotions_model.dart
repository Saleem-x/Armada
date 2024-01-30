import 'package:json_annotation/json_annotation.dart';

part 'promotions_model.g.dart';

@JsonSerializable()
class PromotionsModel {
  @JsonKey(name: 'prm_ID')
  String? prmId;
  @JsonKey(name: 'prm_Image')
  String? prmImage;
  @JsonKey(name: 'prm_Name')
  String? prmName;
  @JsonKey(name: 'rcp_EndDate')
  String? rcpEndDate;
  @JsonKey(name: 'rcp_cus_ID')
  String? rcpCusId;
  String? itmCount;
  @JsonKey(name: 'prt_Name')
  String? prtName;
  @JsonKey(name: 'rcp_FromDate')
  String? rcpFromDate;
  @JsonKey(name: 'prt_Value')
  String? prtValue;
  @JsonKey(name: 'prm_ArabicName')
  String? prmArabicName;
  @JsonKey(name: 'prt_ArabicName')
  String? prtArabicName;

  PromotionsModel({
    this.prmId,
    this.prmImage,
    this.prmName,
    this.rcpEndDate,
    this.rcpCusId,
    this.itmCount,
    this.prtName,
    this.rcpFromDate,
    this.prtValue,
    this.prmArabicName,
    this.prtArabicName,
  });

  factory PromotionsModel.fromJson(Map<String, dynamic> json) {
    return _$PromotionsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromotionsModelToJson(this);
}
