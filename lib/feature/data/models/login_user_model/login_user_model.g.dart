// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserModel _$LoginUserModelFromJson(Map<String, dynamic> json) =>
    LoginUserModel(
      title: json['Title'],
      descr: json['Descr'],
      userId: json['userID'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      firstnameArbic: json['FirstnameArbic'],
      lastnameArabic: json['LastnameArabic'],
      cusId: json['cus_ID'],
      mobileNumber: json['MobileNumber'],
      cusName: json['cus_Name'],
      cusCode: json['cus_Code'],
      cusCurrency: json['cus_Currency'],
      cusCountryCode: json['cus_CountryCode'],
      cusVat: json['cus_VAT'],
      cusMobileNumber: json['cus_MobileNumber'],
      email: json['email'],
      cusAvailableCredit: json['cus_AvailableCredit'],
      cusTotalCredit: json['cus_TotalCredit'],
      roles: json['Roles'],
      cshName: json['csh_Name'],
      isverified: json['isverified'],
      newuser: json['Newuser'],
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
