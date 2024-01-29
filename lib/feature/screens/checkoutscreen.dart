import 'package:armada/feature/widgets/checkoutcalendar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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
          'Checkout',
          style: TextStyle(fontSize: 19.sp),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(20.0), // Adjust the radius as needed
                child: Container(
                    height: 37.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 167, 167)
                          .withOpacity(0.3), // Set the background color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 2,
                          offset: const Offset(-2, 3),
                          blurStyle: BlurStyle.outer,
                          spreadRadius: 0.7,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svg/search_result/timer.svg'),
                        const Text('  Order Cut off time : '),
                        Text(
                          '10 AM',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 100, 54, 26),
                              fontSize: 16.sp),
                        )
                      ],
                    )),
              ),
              SizedBox(height: 14.h),
              Text('Delivery Details',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp)),
              SizedBox(height: 12.h),
              Text('Expected Delivery Date',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Colors.grey)),
              SizedBox(height: 7.h),
              // Container(
              //     height: 34.h,
              //     width: 180.w,
              //     decoration: BoxDecoration(
              //       color: Colors.transparent, // Set the background color
              //
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         SvgPicture.asset('assets/svg/search_result/calendar.svg'),
              //         SizedBox(width: 10.w),
              //         Text('12 Feb 2022',
              //             style: TextStyle(
              //                 fontWeight: FontWeight.w400, fontSize: 16.sp))
              //       ],
              //     )),
              const CheckOutCalendarWidget(),
              SizedBox(height: 7.h),
              Row(
                children: [
                  SvgPicture.asset('assets/svg/search_result/info.svg'),
                  SizedBox(width: 5.h),
                  Text(
                      'Orders placed after 03.00 PM will be delivered \nwithin two business days, excluding holidays',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Colors.grey)),
                ],
              ),
              SizedBox(height: 17.h),
              Text('LPO Details',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp)),
              SizedBox(height: 14.h),
              Text('LPO Number',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Colors.grey)),
              SizedBox(height: 7.h),

              Container(
                height: 42.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(border: InputBorder.none),
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Text('LPO Attachment',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Colors.grey)),
              SizedBox(height: 7.h),
              Container(
                  height: 42.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              'assets/svg/search_result/attachment.svg'),
                          SizedBox(width: 10.w),
                          Text('Select file',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp)),
                        ],
                      ))),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 85.h,
        width: double.infinity,
        color: Colors.white.withOpacity(0.3),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Amount',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'AED 1365.00',
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: const Color.fromARGB(244, 219, 32, 39),
                      height: 40.h,
                      minWidth: 90.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Text(
                            'Proceed to Checkout',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          SizedBox(width: 20.w),
                          SvgPicture.asset(
                            'assets/svg/categories/right.svg',
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'You have exceeded a credit of 30 days',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(244, 219, 32, 39)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
