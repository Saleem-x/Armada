import 'package:armada/widgets/rolesdropdown.dart';
import 'package:armada/widgets/typedropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NewUserScreen extends StatelessWidget {
  const NewUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey.withOpacity(0.3),
        elevation: 0.5,
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
          'Request New User',
          style: TextStyle(fontSize: 19.sp),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('First Name',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                )),
            SizedBox(height: 10.h),
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
                    decoration:
                        const InputDecoration(border: InputBorder.none)),
              ),
            ),
            SizedBox(height: 20.h),
            Text('Last Name',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                )),
            SizedBox(height: 10.h),
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
                    decoration:
                        const InputDecoration(border: InputBorder.none)),
              ),
            ),
            SizedBox(height: 20.h),
            Text('Mobile Number',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                )),
            SizedBox(height: 10.h),
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
                    decoration:
                        const InputDecoration(border: InputBorder.none)),
              ),
            ),
            SizedBox(height: 20.h),
            Text('Email',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                )),
            SizedBox(height: 10.h),
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
                    decoration:
                        const InputDecoration(border: InputBorder.none)),
              ),
            ),
            SizedBox(height: 20.h),
            Text('Select Roles',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                )),
            SizedBox(height: 10.h),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent, // Set the background color
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: RolesDropDown()),
            ),
            SizedBox(height: 20.h),
            Text('User Type',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                )),
            SizedBox(height: 10.h),
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent, // Set the background color
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TypeDropDown()),
            ),
            SizedBox(height: 144.h),
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
                            fontSize: 14.sp,
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
      )),
    );
  }
}
