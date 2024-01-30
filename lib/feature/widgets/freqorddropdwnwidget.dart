import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownMenuItem extends StatelessWidget {
  final String text;

  const CustomDropdownMenuItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 12.sp),
        ),
        SizedBox(width: 4.w),
      ],
    );
  }
}

class FreqDrpDownWidget extends StatefulWidget {
  const FreqDrpDownWidget({super.key});

  @override
  State<FreqDrpDownWidget> createState() => _FreqDrpDownWidgetState();
}

class _FreqDrpDownWidgetState extends State<FreqDrpDownWidget> {
  late String dropdownValue;

  var items = [
    'Cs',
    'Item 2',
  ];
  @override
  void initState() {
    super.initState();

    dropdownValue = 'Cs';
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      isDense: true,
      underline: Container(),
      value: dropdownValue,
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.grey,
        size: 12.sp,
      ),
      items: items.map((String item) {
        return DropdownMenuItem(
          value: item,
          child: CustomDropdownMenuItem(
            text: item,
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}
