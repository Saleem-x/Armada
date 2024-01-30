import 'package:json_annotation/json_annotation.dart';

part 'inset_cart_resp_model.g.dart';

@JsonSerializable()
class InsetCartRespModel {
  @JsonKey(name: 'Res')
  String? res;
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Descr')
  String? descr;

  InsetCartRespModel({this.res, this.title, this.descr});

  factory InsetCartRespModel.fromJson(Map<String, dynamic> json) {
    return _$InsetCartRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InsetCartRespModelToJson(this);
}
