import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

void showMyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        scrollable: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        content: Container(
          //height: 300,
          width: 400,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Select Branch',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 100, 54, 26),
                    ),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset('assets/svg/drawer/store.svg'),
                  title: Text(
                    'Chocolala-Rak',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 100, 54, 26),
                    ),
                  ),
                  subtitle: Text(
                    'Head Office',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 32, 80, 34),
                    ),
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: SvgPicture.asset('assets/svg/drawer/store.svg'),
                  title: Text(
                    'Chocolala-Rak',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 100, 54, 26),
                    ),
                  ),
                  subtitle: Text(
                    'Branch',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 32, 80, 34),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
