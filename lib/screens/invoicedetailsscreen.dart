import 'package:armada/screens/cartscreen.dart';
import 'package:armada/widgets/invdetitemswidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InoiceDetailsScreen extends StatefulWidget {
  const InoiceDetailsScreen({super.key});

  @override
  State<InoiceDetailsScreen> createState() => _InoiceDetailsScreenState();
}

class _InoiceDetailsScreenState extends State<InoiceDetailsScreen> {
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
          'Invoice Details',
          style: TextStyle(fontSize: 19.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: GestureDetector(
              child: SvgPicture.asset(
                'assets/svg/home/cart.svg',
                height: 20.h,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
              },
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Row(
              children: [
                SizedBox(width: 20.w),
                Expanded(
                  child: Container(
                    height: 120.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 233, 183, 179)
                            .withOpacity(0.2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '16 Aug 2021',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'INV1200022',
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                'Payment Type : CR',
                                style: TextStyle(fontSize: 10.sp),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Paid',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.red),
                              ),
                              Text(
                                'AED 1025.00',
                                style: TextStyle(fontSize: 16.sp),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'SubTotal : 1010.00',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'VAT : 15.00',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Grand Total : 1010.00',
                                style: TextStyle(fontSize: 12.sp),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
              ],
            ),
            SizedBox(height: 5.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              //child: OrdereddetailsItemsWidget(),
            ),
            SizedBox(height: 5.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: InvoicedetailsItemsWidget(),
            )
          ],
        ),
      )),
    );
  }
}
