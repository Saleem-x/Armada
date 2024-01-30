import 'package:json_annotation/json_annotation.dart';

part 'login_user_model.g.dart';

@JsonSerializable()
class LoginUserModel {
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Descr')
  String? descr;
  @JsonKey(name: 'userID')
  String? userId;
  String? firstName;
  String? lastName;
  @JsonKey(name: 'FirstnameArbic')
  String? firstnameArbic;
  @JsonKey(name: 'LastnameArabic')
  String? lastnameArabic;
  @JsonKey(name: 'cus_ID')
  String? cusId;
  @JsonKey(name: 'MobileNumber')
  String? mobileNumber;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Currency')
  String? cusCurrency;
  @JsonKey(name: 'cus_CountryCode')
  String? cusCountryCode;
  @JsonKey(name: 'cus_VAT')
  String? cusVat;
  @JsonKey(name: 'cus_MobileNumber')
  String? cusMobileNumber;
  String? email;
  @JsonKey(name: 'cus_AvailableCredit')
  String? cusAvailableCredit;
  @JsonKey(name: 'cus_TotalCredit')
  String? cusTotalCredit;
  @JsonKey(name: 'Roles')
  String? roles;
  @JsonKey(name: 'csh_Name')
  String? cshName;
  String? isverified;
  @JsonKey(name: 'Newuser')
  String? newuser;

  LoginUserModel({
    this.title,
    this.descr,
    this.userId,
    this.firstName,
    this.lastName,
    this.firstnameArbic,
    this.lastnameArabic,
    this.cusId,
    this.mobileNumber,
    this.cusName,
    this.cusCode,
    this.cusCurrency,
    this.cusCountryCode,
    this.cusVat,
    this.cusMobileNumber,
    this.email,
    this.cusAvailableCredit,
    this.cusTotalCredit,
    this.roles,
    this.cshName,
    this.isverified,
    this.newuser,
  });

  factory LoginUserModel.fromJson(Map<String, dynamic> json) {
    return _$LoginUserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginUserModelToJson(this);
}
