import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'freqorddropdwnwidget.dart';

class QualificationGroup extends StatefulWidget {
  const QualificationGroup({super.key});

  @override
  State<QualificationGroup> createState() => _QualificationGroupState();
}

class _QualificationGroupState extends State<QualificationGroup> {
  List<int> counters = List.generate(8, (index) => 1);

  void incrementCounter(int index) {
    setState(() {
      counters[index]++;
    });
  }

  void decrementCounter(int index) {
    if (counters[index] > 1) {
      setState(() {
        counters[index]--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .8,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) => Container(
        height: 230.h,
        width: 185.w,
        //color: Colors.red,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 1,
              offset: const Offset(0, 0),
              blurStyle: BlurStyle.normal,
              spreadRadius: 0.2,
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w, top: 10.h),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/home/1.png',
                height: 100.h,
                width: 75.w,
              ),
              SizedBox(height: 4.h),
              Text(
                'Stork Toffifee 400g',
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const FreqDrpDownWidget(),
                      Text(
                        'AED 30.00',
                        style: TextStyle(fontSize: 8.sp, color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(width: 4.w),
                  GestureDetector(
                    onTap: () {
                      decrementCounter(index);
                    },
                    child: SvgPicture.asset('assets/svg/home/minus.svg'),
                  ),
                  Text('${counters[index]}'),
                  GestureDetector(
                    onTap: () {
                      incrementCounter(index);
                    },
                    child: SvgPicture.asset('assets/svg/home/plus.svg'),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/svg/home/adduom.svg'),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'Add Another UOM',
                    style: TextStyle(fontSize: 12.sp),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
