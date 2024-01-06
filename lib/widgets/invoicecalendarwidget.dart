import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class InvoiceCalendarWidget extends StatefulWidget {
  const InvoiceCalendarWidget({super.key});

  @override
  State<InvoiceCalendarWidget> createState() => _InvoiceCalendarWidgetState();
}

class _InvoiceCalendarWidgetState extends State<InvoiceCalendarWidget> {
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
    toDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
                SvgPicture.asset('assets/svg/search_result/calendar.svg'),
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
            ),
          ),
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
                  SvgPicture.asset('assets/svg/search_result/calendar.svg'),
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
            ))
      ],
    );
  }
}
