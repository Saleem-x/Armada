// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserModel _$LoginUserModelFromJson(Map<String, dynamic> json) =>
    LoginUserModel(
      title: json['Title'] as String?,
      descr: json['Descr'] as String?,
      userId: json['userID'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      firstnameArbic: json['FirstnameArbic'] as String?,
      lastnameArabic: json['LastnameArabic'] as String?,
      cusId: json['cus_ID'] as String?,
      mobileNumber: json['MobileNumber'] as String?,
      cusName: json['cus_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusCurrency: json['cus_Currency'] as String?,
      cusCountryCode: json['cus_CountryCode'] as String?,
      cusVat: json['cus_VAT'] as String?,
      cusMobileNumber: json['cus_MobileNumber'] as String?,
      email: json['email'] as String?,
      cusAvailableCredit: json['cus_AvailableCredit'] as String?,
      cusTotalCredit: json['cus_TotalCredit'] as String?,
      roles: json['Roles'] as String?,
      cshName: json['csh_Name'] as String?,
      isverified: json['isverified'] as String?,
      newuser: json['Newuser'] as String?,
    );

Map<String, dynamic> _$LoginUserModelToJson(LoginUserModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Descr': instance.descr,
      'userID': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'FirstnameArbic': instance.firstnameArbic,
      'LastnameArabic': instance.lastnameArabic,
      'cus_ID': instance.cusId,
      'MobileNumber': instance.mobileNumber,
      'cus_Name': instance.cusName,
      'cus_Code': instance.cusCode,
      'cus_Currency': instance.cusCurrency,
      'cus_CountryCode': instance.cusCountryCode,
      'cus_VAT': instance.cusVat,
      'cus_MobileNumber': instance.cusMobileNumber,
      'email': instance.email,
      'cus_AvailableCredit': instance.cusAvailableCredit,
      'cus_TotalCredit': instance.cusTotalCredit,
      'Roles': instance.roles,
      'csh_Name': instance.cshName,
      'isverified': instance.isverified,
      'Newuser': instance.newuser,
    };
