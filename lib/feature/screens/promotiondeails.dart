import 'package:armada/feature/screens/assignmentscreen.dart';
import 'package:armada/feature/widgets/promotionrange.dart';
import 'package:armada/feature/widgets/qualificationgroup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'cartscreen.dart';

class PromotionDetailsScreen extends StatefulWidget {
  const PromotionDetailsScreen({super.key});

  @override
  State<PromotionDetailsScreen> createState() => _PromotionDetailsScreenState();
}

class _PromotionDetailsScreenState extends State<PromotionDetailsScreen> {
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
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      SizedBox(width: 20.w),
                      Text(
                        'Promotion Range',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: const Color.fromARGB(255, 100, 54, 26)),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  const SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: PromotionRange(),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20.w),
                      Text(
                        'Qualification Group',
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AssignmentScreen()));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
