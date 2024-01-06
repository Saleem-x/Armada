import 'package:armada/screens/cartscreen.dart';
import 'package:armada/widgets/invoicecalendarwidget.dart';
import 'package:armada/widgets/invoicedropdown.dart';
import 'package:armada/widgets/invoicelistwidget.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
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
            'Invoices',
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
          children: [
            const Padding(
                padding: EdgeInsets.all(20.0), child: InvoiceCalendarWidget()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 35.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent, // Set the background color
                  border: Border.all(color: Colors.grey.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: InvoiceDropdownWidget()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: DottedLine(
                dashColor: Colors.grey.withOpacity(0.9),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: InvoiceListWidget(),
              ),
            )
          ],
        )));
  }
}
