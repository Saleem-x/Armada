import 'package:json_annotation/json_annotation.dart';

import 'uom.dart';

part 'recent_ordered.g.dart';

@JsonSerializable()
class RecentOrdered {
  String? catName;
  @JsonKey(name: 'catID')
  String? catId;
  @JsonKey(name: 'itmID')
  String? itmId;
  String? itmName;
  String? itmImage;
  String? sctName;
  String? itmCount;
  @JsonKey(name: 'CHUOM')
  String? chuom;
  @JsonKey(name: 'CHQty')
  String? chQty;
  @JsonKey(name: 'CLUOM')
  String? cluom;
  @JsonKey(name: 'CLQty')
  String? clQty;
  @JsonKey(name: 'itm_ArabicName')
  String? itmArabicName;
  @JsonKey(name: 'sct_ArabicName')
  String? sctArabicName;
  @JsonKey(name: 'cat_ArabicName')
  String? catArabicName;
  String? itmCode;
  @JsonKey(name: 'FreqOrder')
  String? freqOrder;
  @JsonKey(name: 'itm_Type')
  String? itmType;
  @JsonKey(name: 'UOM')
  List<Uom>? uom;
  @JsonKey(name: 'brd_Name')
  String? brdName;

  RecentOrdered({
    this.catName,
    this.catId,
    this.itmId,
    this.itmName,
    this.itmImage,
    this.sctName,
    this.itmCount,
    this.chuom,
    this.chQty,
    this.cluom,
    this.clQty,
    this.itmArabicName,
    this.sctArabicName,
    this.catArabicName,
    this.itmCode,
    this.freqOrder,
    this.itmType,
    this.uom,
    this.brdName,
  });

  factory RecentOrdered.fromJson(Map<String, dynamic> json) {
    return _$RecentOrderedFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RecentOrderedToJson(this);
}
