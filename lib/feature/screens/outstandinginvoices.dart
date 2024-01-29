import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OutstandingInvoices extends StatelessWidget {
  const OutstandingInvoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Outstanding Invoices',
            style: TextStyle(fontSize: 19.sp),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 60.h,
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
                                '5498627',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                '01-May-23',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp),
                              ),
                            ],
                          ),
                          //SizedBox(width: 20.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                '1367.10',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color:
                                        const Color.fromARGB(244, 219, 32, 39)),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                'Inv Amt: 1367.10',
                                style: TextStyle(
                                    fontSize: 14.sp, color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h)
                ],
              );
            },
            itemCount: 4,
          ),
        ));
  }
}
