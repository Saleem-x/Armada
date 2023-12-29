import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 60.h),
            SvgPicture.asset('assets/svg/logo.svg'),
            SizedBox(height: 35.h),
            Container(
              width: double.infinity,
              height: 184.h,
              child: SvgPicture.asset(
                'assets/svg/login_art.svg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Forgot Password..?',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF6f3d1e),
                    ),
                  ),
                  SizedBox(height: 28.h),
                  Text(
                    'Enter your email id below to receive the password',
                    style: TextStyle(
                        color: Color.fromARGB(255, 105, 105, 105),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: SvgPicture.asset('assets/svg/username.svg'),
                      ),
                      SizedBox(width: 20.w),
                      Expanded(
                          child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 124, 124, 124)),
                        ),
                      ))
                    ],
                  ),
                  SizedBox(height: 28.h),
                  MaterialButton(
                    onPressed: () {},
                    color: Color.fromARGB(244, 219, 32, 39),
                    height: 42.h,
                    minWidth: 140.w,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Reset',
                      style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
