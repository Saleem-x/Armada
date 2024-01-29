import 'package:armada/feature/widgets/bottombuttons.dart';
import 'package:armada/feature/widgets/qualificationgroup.dart';
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
                child: Image.asset(
                  'assets/home/promo2.jpg',
                  color: Colors.black.withOpacity(0.2),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    // color: Colors.transparent.withOpacity(0.3),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 27, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
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
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
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
                      SizedBox(height: 10.h),
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
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          Text(
                            'Start Date : 12 January 2022',
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 35.w),
                          Text(
                            'End Date : 17 October 2022',
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 3.h)
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
                        Image.asset('assets/images/eligible.png'),
                        SizedBox(width: 20.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'You are eligible for 5 Pc Free',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color.fromARGB(244, 219, 32, 39),
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Please select from he below assignment group',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        SizedBox(width: 20.w),
                        Text(
                          'Assignment Group',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
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
      floatingActionButton: const Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
          child: BottomButtonsWidget()),
    );
  }
}
