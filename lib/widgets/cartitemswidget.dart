import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartitemsWidget extends StatefulWidget {
  const CartitemsWidget({super.key});

  @override
  State<CartitemsWidget> createState() => _CartitemsWidgetState();
}

class _CartitemsWidgetState extends State<CartitemsWidget> {
  int counter = 1;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter > 1) {
      setState(() {
        counter--;
      });
    }
  }

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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.h),
                        Text(
                          '12025189',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.sp),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          'Stork Toffifee 400g',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12.sp),
                        ),
                        SizedBox(height: 2.h),
                        Container(
                          height: 20.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Color(0xFFd8f1e5).withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AED ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.sp),
                              ),
                              Text(
                                '20.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20.w),
                    Column(
                      children: [
                        SizedBox(height: 15.h),
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Cs',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    SizedBox(width: 15.w),
                                    Icon(Icons.keyboard_arrow_down,
                                        color: Colors.grey, size: 12.sp),
                                  ],
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                  'AED 30.00',
                                  style: TextStyle(
                                      fontSize: 8.sp, color: Colors.red),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.w),
                            GestureDetector(
                              onTap: () {
                                decrementCounter();
                              },
                              child:
                                  SvgPicture.asset('assets/svg/home/minus.svg'),
                            ),
                            SizedBox(width: 20.w),
                            Text('$counter'),
                            SizedBox(width: 20.w),
                            GestureDetector(
                              onTap: () {
                                incrementCounter();
                              },
                              child:
                                  SvgPicture.asset('assets/svg/home/plus.svg'),
                            ),
                          ],
                        ),
                        SizedBox(height: 14.h),
                        Row(
                          children: [
                            Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Pc',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    SizedBox(width: 15.w),
                                    Icon(Icons.keyboard_arrow_down,
                                        color: Colors.grey, size: 12.sp),
                                  ],
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                  'AED 30.00',
                                  style: TextStyle(
                                      fontSize: 8.sp, color: Colors.red),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.w),
                            GestureDetector(
                              onTap: () {
                                decrementCounter();
                              },
                              child:
                                  SvgPicture.asset('assets/svg/home/minus.svg'),
                            ),
                            SizedBox(width: 20.w),
                            Text('$counter'),
                            SizedBox(width: 20.w),
                            GestureDetector(
                              onTap: () {
                                incrementCounter();
                              },
                              child:
                                  SvgPicture.asset('assets/svg/home/plus.svg'),
                            ),
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
      itemCount: 3,
    );
  }
}
