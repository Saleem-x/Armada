import 'package:armada/feature/screens/cartscreen.dart';
import 'package:armada/feature/widgets/invoicecalendarwidget.dart';
import 'package:armada/feature/widgets/orderlistwidget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  late DateTime fromDate;
  late DateTime toDate;
  TextEditingController fromDateController =
      TextEditingController(text: 'Select From Date');
  TextEditingController toDateController =
      TextEditingController(text: 'Select to Date');
  @override
  void initState() {
    super.initState();
    fromDate = DateTime.now();
    toDate = DateTime.now(); // Initialize toDate here
  }

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
          'Orders',
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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: InvoiceCalendarWidget(),
          ),
          Row(
            children: [
              SizedBox(width: 20.w),
              Expanded(
                child: DottedLine(
                  dashColor: Colors.grey.withOpacity(0.9),
                ),
              ),
              SizedBox(width: 20.w),
            ],
          ),
          SizedBox(height: 15.h),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: orderlistWidget(),
            ),
          )
        ],
      )),
    );
  }
}
