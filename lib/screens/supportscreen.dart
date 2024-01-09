import 'package:armada/screens/cartscreen.dart';
import 'package:armada/screens/getsupportscreen.dart';
import 'package:armada/screens/supportdetailscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpportScreen extends StatefulWidget {
  const SpportScreen({super.key});

  @override
  State<SpportScreen> createState() => _SpportScreenState();
}

class _SpportScreenState extends State<SpportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Support',
            style: TextStyle(fontSize: 17.sp),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15.h),
              child: GestureDetector(
                child: SvgPicture.asset(
                  'assets/svg/home/cart.svg',
                  height: 20.h,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartScreen()));
                },
              ),
            )
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GetSupport()));
                      },
                      color: const Color.fromARGB(244, 219, 32, 39),
                      height: 40.h,
                      minWidth: 140.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          // SvgPicture.asset(
                          //   'assets/svg/categories/right.svg',
                          //   color: Colors.white,
                          // ),
                          const Icon(
                            Icons.add,
                            color: Colors.white,
                            //size: 14,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'Get Support',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5.w),
                  ],
                ),
                SizedBox(height: 15.h),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SupportDetails()));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 60.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Colors.grey.withOpacity(
                                      0.3)), // Set the background color
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
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10.h),
                                      Text(
                                        '16 Aug 2021',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 10.sp),
                                      ),
                                      SizedBox(height: 2.h),
                                      Text(
                                        'Divella Penne Pasta 500g',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                  //SizedBox(width: 20.w),

                                  Column(
                                    children: [
                                      SizedBox(height: 10.h),
                                      Text(
                                        'Open',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: const Color.fromARGB(
                                                244, 219, 32, 39)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h)
                        ],
                      ),
                    );
                  },
                  itemCount: 4,
                ),
              ],
            ),
          ),
        )));
  }
}
