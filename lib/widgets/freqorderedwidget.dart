import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FrequentlyOrdered extends StatefulWidget {
  const FrequentlyOrdered({super.key});

  @override
  State<FrequentlyOrdered> createState() => _FrequentlyOrderedState();
}

class _FrequentlyOrderedState extends State<FrequentlyOrdered> {
  // int counter = 1;
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
              blurRadius: 2,
              offset: const Offset(0, 2),
              blurStyle: BlurStyle.normal,
              spreadRadius: 0.7,
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
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cs',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                          SizedBox(width: 15.w),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                              size: 12.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3.h),
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
