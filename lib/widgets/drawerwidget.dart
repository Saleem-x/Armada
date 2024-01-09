import 'package:armada/widgets/drawerlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shape: const BeveledRectangleBorder(),
        width: 345,
        child: ListView(padding: EdgeInsets.zero, children: [
          Container(
            height: 345,
            child: DrawerHeader(
                child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/svg/drawer/profile.svg'),
                    SizedBox(width: 15.w),
                    Text(
                      'LA ZONA CAFE-CASH',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 100, 54, 26)),
                    ),
                    SizedBox(width: 40.w),
                    GestureDetector(
                        child: const Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/drawer/user.svg',
                      height: 20,
                    ),
                    SizedBox(width: 28.w),
                    const Text('Vipin Goutham',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            // fontSize: 14.sp,
                            color: Colors.grey))
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/drawer/phone-call.svg',
                      height: 20,
                    ),
                    SizedBox(width: 28.w),
                    const Text('502544312',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            // fontSize: 14.sp,
                            color: Colors.grey))
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/drawer/email.svg',
                      height: 20,
                    ),
                    SizedBox(width: 28.w),
                    const Text('Roshni@turbosoft.technology',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            // fontSize: 14.sp,
                            color: Colors.grey))
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Container(
                      height: 52.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                            244, 219, 32, 39), // Set the background color
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '10,000.00',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Available Credit Limit',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 52.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        color: Colors.white, // Set the background color
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '10,000.00',
                            style: TextStyle(
                                color: Color.fromARGB(244, 219, 32, 39)),
                          ),
                          Text(
                            'Total Credit Limit',
                            style: TextStyle(fontSize: 10.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/drawer/tollfree.svg'),
                    SizedBox(width: 20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '8004081',
                          style: TextStyle(
                              color: const Color.fromARGB(244, 219, 32, 39),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          '9:00 AM to 6:00 PM',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              // fontSize: 14.sp,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )),
          ),
          const Padding(
            padding: EdgeInsets.zero,
            child: DrawerBody(),
          )
        ]));
  }
}
