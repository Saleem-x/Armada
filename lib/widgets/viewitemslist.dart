import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewItemWidget extends StatelessWidget {
  const ViewItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Row(
        //   children: [
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         SvgPicture.asset('assets/svg/orders/completed.svg'),
        //         // Padding(
        //         //   padding: const EdgeInsets.only(left: 12),
        //         //   child: Container(
        //         //     height: 60,
        //         //     width: 1,
        //         //     color: Colors.grey,
        //         //   ),
        //         // ),
        //         // SvgPicture.asset('assets/svg/orders/completed.svg'),
        //         // Padding(
        //         //   padding: const EdgeInsets.only(left: 12),
        //         //   child: Container(
        //         //     height: 60,
        //         //     width: 1,
        //         //     color: Colors.grey,
        //         //   ),
        //         // ),
        //         // SvgPicture.asset('assets/svg/orders/pending.svg'),
        //         // Padding(
        //         //   padding: const EdgeInsets.only(left: 12),
        //         //   child: Container(
        //         //     height: 60,
        //         //     width: 1,
        //         //     color: Colors.grey,
        //         //   ),
        //         // ),
        //       ],
        //     ),
        //     // Column(
        //     //   children: [
        //     //     Text(
        //     //       'Orderplaced',
        //     //       style: TextStyle(fontSize: 10.sp),
        //     //     ),
        //     //     SizedBox(height: 5.h),
        //     //     Row(
        //     //       children: [
        //     //         SvgPicture.asset('assets/svg/orders/time.svg'),
        //     //         Text(
        //     //           ' 12.30 | 16 Aug 2021',
        //     //           style: TextStyle(fontSize: 12.sp, color: Colors.grey),
        //     //         )
        //     //       ],
        //     //     ),
        //     //     const Divider(),
        //     //     Text(
        //     //       'Processing',
        //     //       style: TextStyle(fontSize: 10.sp),
        //     //     ),
        //     //     SizedBox(height: 5.h),
        //     //     Row(
        //     //       children: [
        //     //         SvgPicture.asset('assets/svg/orders/time.svg'),
        //     //         Text(
        //     //           ' 20 minutes ago',
        //     //           style: TextStyle(fontSize: 12.sp, color: Colors.grey),
        //     //         )
        //     //       ],
        //     //     ),
        //     //   ],
        //     // )
        //     Expanded(
        //       child: Column(
        //         children: [
        //           ListTile(
        //             title: Text(
        //               'Orderplaced',
        //               style: TextStyle(fontSize: 12.sp),
        //             ),
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // );
        Row(
      children: [
        SvgPicture.asset('assets/svg/orders/completed.svg'),
        ListTile(
          title: Text(
            'Orderplaced',
            style: TextStyle(fontSize: 12.sp),
          ),
          subtitle: Text(
            ' 12.30 | 16 Aug 2021',
            //style: TextStyle(fontSize: 12.sp, color: Colors.grey),
          ),
        )
      ],
    );
  }
}
