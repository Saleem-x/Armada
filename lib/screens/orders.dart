import 'package:armada/screens/cartscreen.dart';
import 'package:armada/widgets/orderlistwidget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

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
          'Orders',
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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );

                    if (selectedDate != null && selectedDate != fromDate) {
                      setState(() {
                        fromDate = selectedDate;
                        fromDateController.text =
                            DateFormat('dd/MM/yyyy').format(selectedDate);
                      });
                    }
                  },
                  child: Container(
                      height: 35.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        color: Colors.transparent, // Set the background color
                        border: Border.all(color: Colors.grey.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              'assets/svg/search_result/calendar.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            fromDateController.text,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: Colors.grey.withOpacity(0.9),
                            ),
                          ),
                        ],
                      )),
                ),
                GestureDetector(
                  onTap: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );

                    if (selectedDate != null && selectedDate != toDate) {
                      setState(() {
                        toDate = selectedDate;
                        toDateController.text =
                            DateFormat('dd/MM/yyyy').format(selectedDate);
                      });
                    }
                  },
                  child: Container(
                      height: 35.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        color: Colors.transparent, // Set the background color
                        border: Border.all(color: Colors.grey.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              'assets/svg/search_result/calendar.svg'),
                          SizedBox(width: 10.w),
                          Text(toDateController.text,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: Colors.grey.withOpacity(0.9),
                              ))
                        ],
                      )),
                ),
                Container(
                    height: 35.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          244, 219, 32, 39), // Set the background color
                      border: Border.all(color: Colors.grey.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(17.0),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/svg/categories/right.svg',
                        height: 15.h,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
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
