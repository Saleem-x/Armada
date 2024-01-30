import 'package:json_annotation/json_annotation.dart';

part 'active_promotions.g.dart';

@JsonSerializable()
class ActivePromotions {
  @JsonKey(name: 'prm_ID')
  String? prmId;
  @JsonKey(name: 'prm_Name')
  String? prmName;
  @JsonKey(name: 'rcp_cus_ID')
  String? rcpCusId;
  @JsonKey(name: 'prt_Name')
  String? prtName;
  @JsonKey(name: 'prt_Value')
  String? prtValue;
  @JsonKey(name: 'prm_ArabicName')
  String? prmArabicName;
  @JsonKey(name: 'prt_ArabicName')
  String? prtArabicName;

  ActivePromotions({
    this.prmId,
    this.prmName,
    this.rcpCusId,
    this.prtName,
    this.prtValue,
    this.prmArabicName,
    this.prtArabicName,
  });

  factory ActivePromotions.fromJson(Map<String, dynamic> json) {
    return _$ActivePromotionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActivePromotionsToJson(this);
}
