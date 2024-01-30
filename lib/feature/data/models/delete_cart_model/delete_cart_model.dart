import 'package:json_annotation/json_annotation.dart';

part 'delete_cart_model.g.dart';

@JsonSerializable()
class DeleteCartModel {
  @JsonKey(name: 'userID')
  String? userId;
  @JsonKey(name: 'itmID')
  String? itmId;

  DeleteCartModel({this.userId, this.itmId});

  factory DeleteCartModel.fromJson(Map<String, dynamic> json) {
    return _$DeleteCartModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeleteCartModelToJson(this);
}
