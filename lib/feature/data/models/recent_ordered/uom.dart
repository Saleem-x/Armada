import 'package:json_annotation/json_annotation.dart';

part 'uom.g.dart';

@JsonSerializable()
class Uom {
  @JsonKey(name: 'uomID')
  String? uomId;
  String? uomName;
  @JsonKey(name: 'UPC')
  String? upc;
  @JsonKey(name: 'IsDefault')
  String? isDefault;
  @JsonKey(name: 'Offerprice')
  String? offerprice;
  @JsonKey(name: 'StandardPrice')
  String? standardPrice;
  @JsonKey(name: 'cusID')
  dynamic cusId;

  Uom({
    this.uomId,
    this.uomName,
    this.upc,
    this.isDefault,
    this.offerprice,
    this.standardPrice,
    this.cusId,
  });

  factory Uom.fromJson(Map<String, dynamic> json) => _$UomFromJson(json);

  Map<String, dynamic> toJson() => _$UomToJson(this);
}
