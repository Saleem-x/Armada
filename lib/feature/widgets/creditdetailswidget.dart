import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditDetailsWidget extends StatefulWidget {
  const CreditDetailsWidget({super.key});

  @override
  State<CreditDetailsWidget> createState() => _CreditDetailsWidgetState();
}

class _CreditDetailsWidgetState extends State<CreditDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.h,
              width: 155.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '50,000.00',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: const Color.fromARGB(244, 202, 29, 35),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Total Credit Limit',
                    style: TextStyle(fontSize: 11.sp),
                  )
                ],
              ),
            ),
            Container(
              height: 50.h,
              width: 155.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '30 Days',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: const Color.fromARGB(244, 202, 29, 35),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Credit Days',
                    style: TextStyle(fontSize: 11.sp),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.h,
              width: 155.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '18,000.00',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: const Color.fromARGB(244, 202, 29, 35),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Used Credit Limit',
                    style: TextStyle(fontSize: 11.sp),
                  )
                ],
              ),
            ),
            Container(
              height: 50.h,
              width: 155.w,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(244, 202, 29, 35),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.4),
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '32,000.00',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Available Credit Limit',
                    style: TextStyle(fontSize: 11.sp, color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
