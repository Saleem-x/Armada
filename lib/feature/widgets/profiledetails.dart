import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileDetailsWidget extends StatefulWidget {
  const ProfileDetailsWidget({super.key});

  @override
  State<ProfileDetailsWidget> createState() => _ProfileDetailsWidgetState();
}

class _ProfileDetailsWidgetState extends State<ProfileDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/drawer/user.svg',
              height: 15.h,
            ),
            SizedBox(width: 15.w),
            Text(
              'User Name',
              style: TextStyle(color: Colors.grey, fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(height: 3.h),
        Text(
          'Vipin Goutham',
          style: TextStyle(fontSize: 15.sp),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/drawer/phone-call.svg',
              height: 15.h,
            ),
            SizedBox(width: 15.w),
            Text(
              'Mobile Number',
              style: TextStyle(color: Colors.grey, fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(height: 3.h),
        Text(
          '9874563210',
          style: TextStyle(fontSize: 15.sp),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/drawer/email.svg',
              height: 15.h,
            ),
            SizedBox(width: 15.w),
            Text(
              'Email Address',
              style: TextStyle(color: Colors.grey, fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(height: 3.h),
        Text(
          'vipingoutham@sample.com',
          style: TextStyle(fontSize: 15.sp),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/drawer/phone-call.svg',
              height: 15.h,
            ),
            SizedBox(width: 15.w),
            Text(
              'Customer Code',
              style: TextStyle(color: Colors.grey, fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(height: 3.h),
        Text(
          'X143-001',
          style: TextStyle(fontSize: 15.sp),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/drawer/user.svg',
              height: 15.h,
            ),
            SizedBox(width: 15.w),
            Text(
              'Roles',
              style: TextStyle(color: Colors.grey, fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(height: 3.h),
        Text(
          'Admin, Finance',
          style: TextStyle(fontSize: 15.sp),
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            SvgPicture.asset(
              'assets/svg/profile/currency.svg',
              height: 11.h,
            ),
            SizedBox(width: 13.w),
            Text(
              'Currency',
              style: TextStyle(color: Colors.grey, fontSize: 14.sp),
            )
          ],
        ),
        SizedBox(height: 3.h),
        Text(
          'AED',
          style: TextStyle(fontSize: 15.sp),
        ),
      ],
    );
  }
}
