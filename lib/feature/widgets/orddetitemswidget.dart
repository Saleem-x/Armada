import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdereddetailsItemsWidget extends StatefulWidget {
  const OrdereddetailsItemsWidget({super.key});

  @override
  State<OrdereddetailsItemsWidget> createState() =>
      _OrdereddetailsItemsWidgetState();
}

class _OrdereddetailsItemsWidgetState extends State<OrdereddetailsItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 90.h,
              width: double.infinity,
              color: Colors.white.withOpacity(0.3),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/home/1.png',
                      height: 50.h,
                      //width: 75.w,
                    ),
                    Container(
                      height: 60.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stork Toffifee 400g',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14.sp),
                          ),
                          Container(
                            height: 20.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: const Color(0xFFd8f1e5).withOpacity(0.5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'AED ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp),
                                ),
                                Text(
                                  '20.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Column(
                      children: [
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cs',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                  'AED 30.00',
                                  style: TextStyle(
                                      fontSize: 10.sp, color: Colors.red),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.w),
                            Container(
                              height: 25,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color:
                                      const Color.fromARGB(255, 233, 183, 179)
                                          .withOpacity(0.2)),
                              child: const Center(child: Text('1')),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pc',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                  'AED 30.00',
                                  style: TextStyle(
                                      fontSize: 10.sp, color: Colors.red),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.w),
                            Container(
                              height: 25,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color:
                                      const Color.fromARGB(255, 233, 183, 179)
                                          .withOpacity(0.2)),
                              child: const Center(child: Text('1')),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Divider()
          ],
        );
      },
      itemCount: 6,
    );
  }
}
