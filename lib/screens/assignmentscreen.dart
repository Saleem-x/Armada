import 'package:armada/widgets/qualificationgroup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'cartscreen.dart';

class AssignmentScreen extends StatefulWidget {
  const AssignmentScreen({super.key});

  @override
  State<AssignmentScreen> createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: Image.asset('assets/home/promo2.jpg'),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.14),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            child: SvgPicture.asset(
                              'assets/svg/categories/back.svg',
                              width: 10,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(width: 20.w),
                          Text(
                            'Buy 10 Get 2',
                            style: TextStyle(
                                fontSize: 17.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 210.w),
                          GestureDetector(
                            child: SvgPicture.asset(
                              'assets/svg/home/cart.svg',
                              height: 20.h,
                              color: Colors.white,
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CartScreen()));
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'Buy 10 Get 2',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'Free Good Promoion',
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          Text(
                            'Start Date : 12 January 2022',
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 35.w),
                          Text(
                            'End Date : 17 October 2022',
                            style: TextStyle(
                                fontSize: 11.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        SizedBox(width: 20.w),
                        Text(
                          'Assignment Group',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color.fromARGB(255, 100, 54, 26)),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: QualificationGroup(),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: Container(
          width: double.infinity,
          height: 55.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(244, 219, 32, 39),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Text(
                      'You are eligible for',
                      style: TextStyle(fontSize: 10.sp, color: Colors.yellow),
                    ),
                    Text(
                      '5 Pc Free',
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Choose From Assignment Group',
                        style: TextStyle(fontSize: 11.sp, color: Colors.white),
                      ),
                      SizedBox(width: 10.w),
                      SvgPicture.asset(
                        'assets/svg/home/arrow_right.svg',
                        height: 10,
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
