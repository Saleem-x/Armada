import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownMenuItem extends StatelessWidget {
  //final IconData icon;
  final String text;

  CustomDropdownMenuItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Icon(icon),

        Text(
          text,
          style:
              TextStyle(fontSize: 15.sp, color: Colors.black.withOpacity(0.6)),
        ),
        SizedBox(width: 230.w),
      ],
    );
  }
}

class TypeDropDown extends StatefulWidget {
  const TypeDropDown({super.key});

  @override
  State<TypeDropDown> createState() => _TypeDropDownState();
}

class _TypeDropDownState extends State<TypeDropDown> {
  late String dropdownValue;

  var items = [
    'Branch User',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  void initState() {
    super.initState();

    dropdownValue = 'Branch User';
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: Container(),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      items: items.map((String item) {
        // IconData icon =
        //     Icons.circle; // Replace with your desired icon
        return DropdownMenuItem(
          value: item,
          child: CustomDropdownMenuItem(
            //icon: icon,
            text: item,
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        // Handle dropdown value change
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}
