import 'package:armada/feature/screens/userscreen.dart';
import 'package:armada/feature/widgets/creditdetailswidget.dart';
import 'package:armada/feature/widgets/profiledetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'documentscreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Profile',
          style: TextStyle(fontSize: 19.sp),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/drawer/profile.svg'),
                    SizedBox(width: 18.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customer Name',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        Text(
                          'Chocolala-Rak',
                          style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 100, 54, 26)),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16.h),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProfileDetailsWidget(),
                      SizedBox(height: 16.h),
                      const Padding(
                        padding: EdgeInsets.zero,
                        child: CreditDetailsWidget(),
                      ),
                      SizedBox(height: 15.h),
                      Divider(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DocumentScreen()));
                            },
                            child: Container(
                              height: 45.h,
                              width: 155.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      blurRadius: 1,
                                      offset: const Offset(0, 0),
                                      blurStyle: BlurStyle.normal,
                                      spreadRadius: 0.2,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              'assets/images/document.png',
                                              height: 30.h),
                                          SizedBox(width: 8.w),
                                          Text(
                                            'Documents',
                                            style: TextStyle(fontSize: 12.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        'assets/svg/categories/right.svg')
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UsersScreen()));
                            },
                            child: Container(
                              height: 45.h,
                              width: 155.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      blurRadius: 1,
                                      offset: const Offset(0, 0),
                                      blurStyle: BlurStyle.normal,
                                      spreadRadius: 0.2,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset('assets/images/user.png',
                                              height: 30.h),
                                          SizedBox(width: 10.w),
                                          Text(
                                            'Users',
                                            style: TextStyle(fontSize: 12.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SvgPicture.asset(
                                        'assets/svg/categories/right.svg')
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
