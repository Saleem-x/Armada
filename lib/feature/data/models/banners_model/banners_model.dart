import 'package:json_annotation/json_annotation.dart';

part 'banners_model.g.dart';

@JsonSerializable()
class BannersModel {
  @JsonKey(name: 'Heading')
  String? heading;
  String? image;
  @JsonKey(name: 'ShortMessage')
  String? shortMessage;
  @JsonKey(name: 'ArabicHeading')
  String? arabicHeading;
  @JsonKey(name: 'ArabicShortMessage')
  String? arabicShortMessage;

  BannersModel({
    this.heading,
    this.image,
    this.shortMessage,
    this.arabicHeading,
    this.arabicShortMessage,
  });

  factory BannersModel.fromJson(Map<String, dynamic> json) {
    return _$BannersModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BannersModelToJson(this);
}
