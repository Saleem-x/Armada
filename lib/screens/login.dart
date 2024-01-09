import 'package:armada/screens/dailyverification.dart';
import 'package:armada/widgets/passwordwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:armada/screens/forgotpassword.dart';
import 'package:armada/screens/verifyaccount.dart';

import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 94.h),
              SvgPicture.asset('assets/svg/logo.svg'),
              SizedBox(height: 56.h),
              Container(
                width: double.infinity,
                height: 184.h,
                child: SvgPicture.asset(
                  'assets/svg/login_art.svg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 40.h),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF6f3d1e),
                        ),
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
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: 'Email or Userame',
                              hintStyle: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromARGB(255, 124, 124, 124)),
                            ),
                          ))
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.h),
                            child: SvgPicture.asset(
                              'assets/svg/password.svg',
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Expanded(
                            child: PasswordFieldWithVisibilityToggle(),
                          )
                        ],
                      ),
                      SizedBox(height: 18.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: Text('Forgot Password ?',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color:
                                        const Color.fromARGB(244, 175, 25, 30),
                                    fontWeight: FontWeight.w500)),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PasswordScreen()));
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 22.h),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DailyVerfScreen()));
                        },
                        color: const Color.fromARGB(244, 202, 29, 35),
                        height: 44.h,
                        minWidth: 500.w,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Yet to verify account?  ',
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    child: Text('Verify',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(244, 175, 25, 30))),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerifyScreen()));
                    },
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Text(
                'Powered by',
                style: TextStyle(fontSize: 6.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                  height: 22.h,
                  width: 52.w,
                  child: SvgPicture.asset(
                    'assets/svg/Path 838.svg',
                    fit: BoxFit.fill,
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
