import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotDeals extends StatefulWidget {
  const HotDeals({super.key});

  @override
  State<HotDeals> createState() => _HotDealsState();
}

class _HotDealsState extends State<HotDeals> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 20.w),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 450,
                child: Container(
                  width: 350,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/home/promo2.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        right: 20,
                        top: 40,
                        child: Container(
                          height: 100.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.w, top: 10.h),
                            child: Text(
                              'Expires in 17 Days 12 hours',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.8)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        right: 20,
                        top: 75,
                        child: Container(
                          height: 100.h,
                          width: 200.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: EdgeInsets.only(left: 22.w, top: 15.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Buy 10 Get 2',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: const Color.fromARGB(
                                          255, 100, 54, 26)),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  'Free Good Promotion',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14.sp),
                                ),
                                SizedBox(height: 4.h),
                                GestureDetector(
                                  child: Row(
                                    children: [
                                      Text('View Details  ',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500)),
                                      Icon(Icons.chevron_right,
                                          color: Colors.red, size: 16.sp)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 10.w);
            },
            itemCount: 3,
          ),
          SizedBox(width: 20.w)
        ],
      ),
    );
  }
}
