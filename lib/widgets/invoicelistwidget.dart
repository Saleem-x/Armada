import 'package:armada/screens/invoicedetailsscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceListWidget extends StatefulWidget {
  const InvoiceListWidget({super.key});

  @override
  State<InvoiceListWidget> createState() => _InvoiceListWidgetState();
}

class _InvoiceListWidgetState extends State<InvoiceListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const InoiceDetailsScreen()));
          },
          child: Column(
            children: [
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent, // Set the background color
                  border: Border.all(color: Colors.grey.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(15.0),
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
                            'INV1200022',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14.sp),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            '16 Aug 2021',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 10.sp),
                          ),
                        ],
                      ),
                      //SizedBox(width: 20.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 10.h),
                          Text(
                            'Unpaid',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color.fromARGB(244, 219, 32, 39)),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            'AED 1025.00',
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
      itemCount: 12,
    );
  }
}
