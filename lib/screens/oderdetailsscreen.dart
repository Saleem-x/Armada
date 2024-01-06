import 'package:armada/screens/cartscreen.dart';
import 'package:armada/widgets/orddetitemswidget.dart';
import 'package:armada/widgets/viewitemslist.dart';
//import 'package:armada/widgets/orddetitemswidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  bool isClicked = false;

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
                Navigator.pop(context);
              },
            )),
        title: Text(
          'Order Details',
          style: TextStyle(fontSize: 17.sp),
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
                    height: 150.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 233, 183, 179)
                            .withOpacity(0.2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ORD#1200125551',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    'AED 1025.00 / 16 items',
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    'Order on 16 Aug 2021 | Exp. delivery on 17 Aug 2021',
                                    style: TextStyle(fontSize: 8.sp),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //Icon(Icons.repeat),
                                  SvgPicture.asset(
                                      'assets/svg/orders/repeat.svg',
                                      height: 18.h),
                                  Text(
                                    'Repeate Order',
                                    style: TextStyle(
                                        fontSize: 10.sp, color: Colors.red),
                                  )
                                ],
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      //Icon(Icons.picture_as_pdf),
                                      SvgPicture.asset(
                                          'assets/svg/orders/pdf.svg'),
                                      Text(' View PDF',
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: const Color.fromARGB(
                                                244, 219, 32, 39),
                                          )),
                                    ],
                                  ),
                                  SizedBox(height: 15.h),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isClicked = !isClicked;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                            isClicked
                                                ? 'View Items'
                                                : 'Ordered',
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              color: const Color.fromARGB(
                                                  244, 219, 32, 39),
                                            )),
                                        SizedBox(width: 25.w),
                                        SvgPicture.asset(
                                          'assets/svg/categories/right.svg',
                                          color: const Color.fromARGB(
                                              244, 219, 32, 39),
                                          height: 10,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'SubTotal : 1010.00',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    'VAT : 15.00',
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  SizedBox(height: 3.h),
                                  Visibility(
                                    visible: !isClicked,
                                    child: Text(
                                      'Grand Total : 1010.00',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  )
                                ],
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
            Visibility(
              visible: !isClicked,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: OrdereddetailsItemsWidget(),
              ),
            ),
            SizedBox(height: 20.h),
            Visibility(
              visible: isClicked,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ViewItemWidget(),
              ),
            )
          ],
        ),
      )),
    );
  }
}
