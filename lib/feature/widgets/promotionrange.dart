import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionRange extends StatefulWidget {
  const PromotionRange({super.key});

  @override
  State<PromotionRange> createState() => _PromotionRangeState();
}

class _PromotionRangeState extends State<PromotionRange> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 20.w,
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    width: 178.w,
                    height: 30.h,
                    child: Card(
                      surfaceTintColor: Colors.white,
                      color: index == 0
                          ? const Color.fromARGB(244, 219, 32, 39)
                          : Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Get 3 Pc Free',
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    color: index == 0
                                        ? Colors.white
                                        : const Color.fromARGB(
                                            244, 219, 32, 39),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                'With purchase of',
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color:
                                        index == 0 ? Colors.white : Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                '1-10 Pc',
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: index == 0
                                        ? Colors.white
                                        : const Color.fromARGB(
                                            255, 100, 54, 26),
                                    fontWeight: FontWeight.w500),
                              )
                            ]),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, ind) {
                  return SizedBox(
                    width: 3.w,
                  );
                },
                itemCount: 3),
            SizedBox(
              width: 20.w,
            ),
          ],
        ),
      ),
    );
  }
}
