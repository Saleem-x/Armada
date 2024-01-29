import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SupetBottomWidget extends StatefulWidget {
  const SupetBottomWidget({super.key});

  @override
  State<SupetBottomWidget> createState() => _SupetBottomWidgetState();
}

class _SupetBottomWidgetState extends State<SupetBottomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,

        border: Border.all(
            color: Colors.grey.withOpacity(0.3)), // Set the background color
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 1,
            offset: const Offset(0, 0),
            blurStyle: BlurStyle.normal,
            spreadRadius: 0.2,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 1,
                        offset: const Offset(0, 0),
                        blurStyle: BlurStyle.normal,
                        spreadRadius: 0.2,
                      )
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/svg/support/icon.svg'),
                  ),
                ),
                Container(
                  height: 44.h,
                  width: 270.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.grey.withOpacity(0.4)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 15.w),
                        Expanded(
                            child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type here',
                              hintStyle: TextStyle(fontSize: 14.sp)),
                        )),
                        GestureDetector(
                          child: Container(
                              height: 32.h,
                              width: 44.w,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(244, 219, 32, 39),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/svg/support/send.svg',
                                  height: 40,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 168,
                  child: MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(244, 219, 32, 39),
                    height: 38.h,
                    //minWidth: 140.w,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Mark as Resolved',
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 168.w,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.yellow[800],
                    height: 38.h,
                    //minWidth: 140.w,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Escalate to next level',
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
