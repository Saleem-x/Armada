import 'package:json_annotation/json_annotation.dart';

part 'insert_cart_model.g.dart';

@JsonSerializable()
class InsertCartModel {
  @JsonKey(name: 'userID')
  String? userId;
  @JsonKey(name: 'cusID')
  String? cusId;
  @JsonKey(name: 'itm_ID')
  String? itmId;
  @JsonKey(name: 'HigherQty')
  String? higherQty;
  @JsonKey(name: 'HigherUOM')
  String? higherUom;
  @JsonKey(name: 'LowerQty')
  String? lowerQty;
  @JsonKey(name: 'lowerUOM')
  String? lowerUom;

  InsertCartModel({
    this.userId,
    this.cusId,
    this.itmId,
    this.higherQty,
    this.higherUom,
    this.lowerQty,
    this.lowerUom,
  });

  factory InsertCartModel.fromJson(Map<String, dynamic> json) {
    return _$InsertCartModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InsertCartModelToJson(this);
}
