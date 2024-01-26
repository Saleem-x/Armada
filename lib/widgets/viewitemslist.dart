import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewItemWidget extends StatelessWidget {
  const ViewItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SvgPicture.asset('assets/svg/orders/completed.svg'),
                    const verticalLine(),
                  ],
                ),
                SizedBox(width: 22.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Order Placed'),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/orders/time.svg',
                          width: 12.w,
                          color: Colors.grey,
                        ),
                        const Text(
                          '  12.30 | 16 Aug 2021',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SvgPicture.asset('assets/svg/orders/completed.svg'),
                    const verticalLine(),
                  ],
                ),
                SizedBox(width: 22.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Processing'),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/orders/time.svg',
                          width: 12.w,
                          color: Colors.grey,
                        ),
                        const Text(
                          '  20 minutes ago',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SvgPicture.asset('assets/svg/orders/completed.svg'),
                    const verticalLine(),
                  ],
                ),
                SizedBox(width: 22.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Being prepared'),
                    SizedBox(height: 8.h),
                  ],
                )
              ],
            ),
          ),
          Container(
            //color: Colors.amber,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SvgPicture.asset('assets/svg/orders/completed.svg'),
                    const verticalLine(),
                  ],
                ),
                SizedBox(width: 22.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Dispatched. In transit'),
                    SizedBox(height: 8.h),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SvgPicture.asset('assets/svg/orders/completed.svg'),
                    const verticalLine(),
                  ],
                ),
                SizedBox(width: 22.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Delivered at location'),
                    SizedBox(height: 8.h),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SvgPicture.asset('assets/svg/orders/completed.svg'),
                    // const verticalLine(),
                  ],
                ),
                SizedBox(width: 22.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Delivered'),
                    SizedBox(height: 8.h),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class verticalLine extends StatelessWidget {
  const verticalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 1.w,
      color: Colors.grey,
    );
  }
}
