import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey.withOpacity(0.3),
        toolbarHeight: 48.h,
        leading: Padding(
            padding: EdgeInsets.only(
              left: 15.w,
              top: 15.h,
              bottom: 15.h,
            ),
            child: GestureDetector(
              child: SvgPicture.asset(
                'assets/svg/categories/back.svg',
                width: 10,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )),
        title: Text(
          'Change Password',
          style: TextStyle(fontSize: 17.sp),
        ),
      ),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Text(
                'Username',
                style: TextStyle(color: Colors.grey, fontSize: 13.sp),
              ),
              SizedBox(height: 7.h),
              Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                      color: Colors.grey
                          .withOpacity(0.3)), // Set the background color
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none)),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Current Password',
                style: TextStyle(color: Colors.grey, fontSize: 13.sp),
              ),
              SizedBox(height: 7.h),
              Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                      color: Colors.grey
                          .withOpacity(0.3)), // Set the background color
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none)),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'New Password',
                style: TextStyle(color: Colors.grey, fontSize: 13.sp),
              ),
              SizedBox(height: 7.h),
              Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                      color: Colors.grey
                          .withOpacity(0.3)), // Set the background color
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none)),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                'Confirm Password',
                style: TextStyle(color: Colors.grey, fontSize: 13.sp),
              ),
              SizedBox(height: 7.h),
              Container(
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.grey.withOpacity((0.4)),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                    decoration: InputDecoration(border: InputBorder.none),
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ),
              ),
              SizedBox(height: 380.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 50.w),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(244, 219, 32, 39),
                    height: 40.h,
                    minWidth: 140.w,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Text(
                          'Submit',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(width: 90.w),
                        SvgPicture.asset(
                          'assets/svg/categories/right.svg',
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
