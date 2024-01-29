import 'package:armada/feature/widgets/freqorddropdwnwidget.dart';
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
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) => Container(
        // height: 270,
        width: 180,
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
          padding: const EdgeInsets.only(
            bottom: 6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/home/1.png',
                height: 100.h,
                width: 75.w,
              ),
              SizedBox(height: 2.h),
              Text(
                'Stork Toffifee 400g',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13.sp),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FreqDrpDownWidget(),
                            Text(
                              'AED 30.00',
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(fontSize: 10.sp, color: Colors.red),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            decrementCounter(index);
                          },
                          child: SvgPicture.asset(
                            'assets/svg/home/minus.svg',
                            height: 15.h,
                            width: 15.w,
                          ),
                        ),
                        Text(
                          '${counters[index]}',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        GestureDetector(
                          onTap: () {
                            incrementCounter(index);
                          },
                          child: SvgPicture.asset(
                            'assets/svg/home/plus.svg',
                            height: 15.h,
                            width: 15.w,
                          ),
                        )
                      ])),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/svg/home/adduom.svg',
                          height: 15.h,
                          width: 15.w,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      'Add Another UOM',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12.sp),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
