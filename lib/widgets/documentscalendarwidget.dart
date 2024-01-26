import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class DocumentsCalendarWidget extends StatefulWidget {
  const DocumentsCalendarWidget({super.key});

  @override
  State<DocumentsCalendarWidget> createState() =>
      _DocumentsCalendarWidgetState();
}

class _DocumentsCalendarWidgetState extends State<DocumentsCalendarWidget> {
  late DateTime fromDate;
  late DateTime toDate;
  TextEditingController fromDateController =
      TextEditingController(text: 'Select Date');

  @override
  void initState() {
    super.initState();
    fromDate = DateTime.now();
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
            height: 50.h,
            width: 175.w,
            decoration: BoxDecoration(
              color: Colors.transparent, // Set the background color
              border: Border.all(color: Colors.grey.withOpacity(0.4)),
              borderRadius: BorderRadius.circular(6.0),
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
                    fontSize: 14.sp,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
