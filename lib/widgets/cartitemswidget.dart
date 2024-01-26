import 'package:armada/widgets/freqorddropdwnwidget.dart';
import 'package:armada/widgets/pcdropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartitemsWidget extends StatefulWidget {
  const CartitemsWidget({super.key});

  @override
  State<CartitemsWidget> createState() => _CartitemsWidgetState();
}

class _CartitemsWidgetState extends State<CartitemsWidget> {
  List<int> counters = List.generate(8, (index) => 1);
  List<int> pcounters = List.generate(8, (index) => 1);

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

  void pincrementCounter(int index) {
    setState(() {
      pcounters[index]++;
    });
  }

  void pdecrementCounter(int index) {
    if (pcounters[index] > 1) {
      setState(() {
        pcounters[index]--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) => Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.white.withOpacity(0.3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/home/1.png',
                        height: 56.h,
                      ),
                      Container(
                        height: 74,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '12025189',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 10.sp),
                            ),
                            Text(
                              'Stork Toffifee 400g',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 12.sp),
                            ),
                            Container(
                                height: 22.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color:
                                      const Color(0xFFd8f1e5).withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'AED ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10.sp),
                                    ),
                                    Text(
                                      '20.00',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 120.w,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const FreqDrpDownWidget(),
                                  Text(
                                    'AED 30.00',
                                    style: TextStyle(
                                        fontSize: 8.sp, color: Colors.red),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  decrementCounter(index);
                                },
                                child: SvgPicture.asset(
                                    'assets/svg/home/minus.svg'),
                              ),
                              Text('${counters[index]}'),
                              GestureDetector(
                                onTap: () {
                                  incrementCounter(index);
                                },
                                child: SvgPicture.asset(
                                    'assets/svg/home/plus.svg'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const PcDrpDownWidget(),
                                  Text(
                                    'AED 30.00',
                                    style: TextStyle(
                                        fontSize: 8.sp, color: Colors.red),
                                  ),
                                ],
                              ),
                              // SizedBox(width: 6.w),
                              GestureDetector(
                                onTap: () {
                                  pdecrementCounter(index);
                                },
                                child: SvgPicture.asset(
                                    'assets/svg/home/minus.svg'),
                              ),
                              //SizedBox(width: 20.w),
                              Text('${pcounters[index]}'),
                              //SizedBox(width: 20.w),
                              GestureDetector(
                                onTap: () {
                                  pincrementCounter(index);
                                },
                                child: SvgPicture.asset(
                                    'assets/svg/home/plus.svg'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
