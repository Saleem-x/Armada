import 'package:json_annotation/json_annotation.dart';

part 'login_user_model.g.dart';

@JsonSerializable()
class LoginUserModel {
  @JsonKey(name: 'Title')
  dynamic title;
  @JsonKey(name: 'Descr')
  dynamic descr;
  @JsonKey(name: 'userID')
  dynamic userId;
  dynamic firstName;
  dynamic lastName;
  @JsonKey(name: 'FirstnameArbic')
  dynamic firstnameArbic;
  @JsonKey(name: 'LastnameArabic')
  dynamic lastnameArabic;
  @JsonKey(name: 'cus_ID')
  dynamic cusId;
  @JsonKey(name: 'MobileNumber')
  dynamic mobileNumber;
  @JsonKey(name: 'cus_Name')
  dynamic cusName;
  @JsonKey(name: 'cus_Code')
  dynamic cusCode;
  @JsonKey(name: 'cus_Currency')
  dynamic cusCurrency;
  @JsonKey(name: 'cus_CountryCode')
  dynamic cusCountryCode;
  @JsonKey(name: 'cus_VAT')
  dynamic cusVat;
  @JsonKey(name: 'cus_MobileNumber')
  dynamic cusMobileNumber;
  dynamic email;
  @JsonKey(name: 'cus_AvailableCredit')
  dynamic cusAvailableCredit;
  @JsonKey(name: 'cus_TotalCredit')
  dynamic cusTotalCredit;
  @JsonKey(name: 'Roles')
  dynamic roles;
  @JsonKey(name: 'csh_Name')
  dynamic cshName;
  dynamic isverified;
  @JsonKey(name: 'Newuser')
  dynamic newuser;

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
