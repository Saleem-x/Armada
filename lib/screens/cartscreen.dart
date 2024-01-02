import 'package:armada/screens/checkoutscreen.dart';
import 'package:armada/screens/homescreen.dart';
import 'package:armada/widgets/cartitemswidget.dart';
import 'package:armada/widgets/cartpromotionwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFf6f6f6),
        surfaceTintColor: const Color(0xFFf6f6f6),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            )),
        title: Text(
          'Cart',
          style: TextStyle(fontSize: 17.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: GestureDetector(
              child: Text(
                'Clear All',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(244, 219, 32, 39),
                  fontSize: 14.sp,
                ),
              ),
              onTap: () {},
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Your Order',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14.sp)),
                    Text('3 Items',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14.sp)),
                  ],
                ),
                // SizedBox(height: 10.h),
                /*Container(
                  height: 320.h,
                  width: double.infinity,
                  child: const CartitemsWidget(),
                ),*/

                const Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: CartitemsWidget(),
                ),
                SizedBox(height: 15.h),
                Text('Pomotions Applied',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 14.sp)),
                SizedBox(height: 10.h),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: const CartpromotionWidget(),
                ),
                SizedBox(height: 10.h),
                const DottedLine(
                  dashColor: Colors.grey,
                ),
                SizedBox(height: 20.h),
                Row(children: [
                  SvgPicture.asset('assets/svg/categories/writing.svg'),
                  SizedBox(width: 15.w),
                  Text(
                    'Add Remarks',
                    style: TextStyle(
                        fontSize: 10.sp,
                        color: const Color.fromARGB(244, 219, 32, 39)),
                  ),
                ]),
                SizedBox(height: 20.h),
                const DottedLine(
                  dashColor: Colors.grey,
                ),
                SizedBox(height: 20.h),
                Text(
                  'Available Credit Limit: 3,200.00 / 10,000.00',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 12.sp),
                ),
                SizedBox(height: 20.h),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub Total',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.sp),
                        ),
                        Text(
                          '1385.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.sp),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.sp),
                        ),
                        Text(
                          '85.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.sp),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'VAT',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.sp),
                        ),
                        Text(
                          '65.00 (5%)',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 10.sp),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
      bottomNavigationBar: Container(
        height: 80.h,
        color: Colors.white.withOpacity(0.3),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Amount',
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'AED 1365.00',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheckoutScreen()));
                },
                color: const Color.fromARGB(244, 219, 32, 39),
                height: 40.h,
                minWidth: 100.w,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Text(
                      'Select Free Good',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(width: 20.w),
                    SvgPicture.asset(
                      'assets/svg/categories/right.svg',
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
