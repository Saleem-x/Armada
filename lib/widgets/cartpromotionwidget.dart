import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartpromotionWidget extends StatefulWidget {
  const CartpromotionWidget({super.key});

  @override
  State<CartpromotionWidget> createState() => _CartpromotionWidgetState();
}

class _CartpromotionWidgetState extends State<CartpromotionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h),
        child: Column(
          children: [
            //SizedBox(height: 15.h),
            Expanded(
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 60.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xFFd8f1e5).withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '5 Pc Free',
                                            style: TextStyle(fontSize: 14.sp),
                                          ),
                                          Text(
                                            'Free Good Promotion',
                                            style: TextStyle(fontSize: 10.sp),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        child: Container(
                                            child: Row(
                                          children: [
                                            Text(
                                              'View Details',
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: const Color.fromARGB(
                                                      244, 219, 32, 39)),
                                            ),
                                            SizedBox(width: 10.w),
                                            SvgPicture.asset(
                                              'assets/svg/categories/right.svg',
                                              color: const Color.fromARGB(
                                                  244, 219, 32, 39),
                                            )
                                          ],
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 15.h),
                itemCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
