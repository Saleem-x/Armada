import 'package:armada/feature/screens/oderdetailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class orderlistWidget extends StatefulWidget {
  const orderlistWidget({super.key});

  @override
  State<orderlistWidget> createState() => _orderlistWidgetState();
}

class _orderlistWidgetState extends State<orderlistWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const OrderDetails()));
          },
          child: Column(
            children: [
              Container(
                height: 75.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  //border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 1,
                      offset: const Offset(0, 0),
                      blurStyle: BlurStyle.normal,
                      spreadRadius: 0.2,
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h),
                          Text(
                            'ORD#1200125551',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 16.sp),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'Ordered on 16 Aug 2021',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12.sp),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'Expected delivery ob 18 Aug 2021 ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12.sp),
                          ),
                        ],
                      ),
                      //SizedBox(width: 20.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 10.h),
                          Text(
                            'Ordered',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color.fromARGB(244, 219, 32, 39)),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'AED 1025.00',
                            style: TextStyle(
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            '16 Items',
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h)
            ],
          ),
        );
      },
      itemCount: 4,
    );
  }
}
