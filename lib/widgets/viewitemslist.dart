import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewItemWidget extends StatelessWidget {
  const ViewItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Container(
            //color: Colors.red,
            height: 450,
            child: Column(
              children: [
                SvgPicture.asset('assets/svg/orders/completed.svg'),
                Container(
                  height: 55,
                  width: 1,
                  color: Colors.grey,
                ),
                SvgPicture.asset('assets/svg/orders/completed.svg'),
                Container(
                  height: 55,
                  width: 1,
                  color: Colors.grey,
                ),
                SvgPicture.asset('assets/svg/orders/pending.svg'),
                Container(
                  height: 55,
                  width: 1,
                  color: Colors.grey,
                ),
                SvgPicture.asset('assets/svg/orders/pending.svg'),
                Container(
                  height: 55,
                  width: 1,
                  color: Colors.grey,
                ),
                SvgPicture.asset('assets/svg/orders/pending.svg'),
                Container(
                  height: 55,
                  width: 1,
                  color: Colors.grey,
                ),
                SvgPicture.asset('assets/svg/orders/pending.svg'),
              ],
            ),
          ),
          SizedBox(width: 22.w),
          Container(
            //color: Colors.yellow,
            height: 450,
            width: 310,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Order Placed'),
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
                SizedBox(height: 8.h),
                Divider(),
                SizedBox(height: 8.h),
                Text('Processing'),
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
                SizedBox(height: 8.h),
                Divider(),
                SizedBox(height: 8.h),
                Text('Being prepared'),
                SizedBox(height: 8.h),
                Text(''),
                SizedBox(height: 8.h),
                Divider(),
                SizedBox(height: 8.h),
                Text('Dispatched. In transit'),
                SizedBox(height: 8.h),
                Text(''),
                SizedBox(height: 8.h),
                Divider(),
                SizedBox(height: 8.h),
                Text('Arrived at location'),
                SizedBox(height: 8.h),
                Text(''),
                SizedBox(height: 8.h),
                Divider(),
                SizedBox(height: 8.h),
                Text('Delivered'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
