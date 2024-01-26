import 'package:armada/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class DailyVerfScreen extends StatelessWidget {
  const DailyVerfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70.h),
              SvgPicture.asset('assets/svg/logo.svg'),
              SizedBox(height: 32.h),
              Container(
                width: double.infinity,
                //height: 200.h,
                child: SvgPicture.asset(
                  'assets/svg/login_art.svg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daily Verification',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF6f3d1e),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'An OTP has been sent to your account. You can use the same OTP for logging in both web and app for today',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 105, 105, 105),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Enter OTP',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            )),
                        GestureDetector(
                            child: Text('Resend OTP',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromARGB(
                                        244, 175, 25, 30)))),
                      ],
                    ),
                    SizedBox(height: 25.h),
                    PinCodeTextField(
                      appContext: context,
                      length: 6,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(4),
                        disabledColor: Colors.white,
                        activeColor: Colors.grey.withOpacity(0.4),
                        inactiveFillColor: Colors.white,
                        activeFillColor: Colors.white,
                        selectedFillColor: Colors.white,
                        selectedColor: Colors.grey.withOpacity(0.4),
                        inactiveColor: Colors.grey.withOpacity(0.4),
                        fieldHeight: 38,
                        fieldWidth: 38,
                      ),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      animationDuration: const Duration(milliseconds: 300),
                      boxShadows: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            color: Colors.grey.withOpacity(0.4),
                            blurRadius: 1,
                            spreadRadius: 0.7,
                            blurStyle: BlurStyle.normal)
                      ],
                    ),
                    SizedBox(height: 20.h),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      color: const Color.fromARGB(244, 202, 29, 35),
                      height: 35.h,
                      minWidth: 500.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Verify',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                child: Text('Back to login',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(244, 175, 25, 30))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 25.h),
              Text(
                'Powered by',
                style: TextStyle(fontSize: 6.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                  height: 20.h,
                  width: 50.w,
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
