import 'package:armada/screens/promotiondeails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'cartscreen.dart';

class PromotionScreen extends StatefulWidget {
  const PromotionScreen({super.key});

  @override
  State<PromotionScreen> createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.grey.withOpacity(0.3),
        toolbarHeight: 48.h,
        leading: Padding(
            padding: EdgeInsets.only(
              left: 15.w,
              top: 15.h,
              bottom: 15.h,
            ),
            child: GestureDetector(
              child: SvgPicture.asset(
                'assets/svg/categories/back.svg',
                width: 10,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )),
        title: Text(
          'Promotion',
          style: TextStyle(fontSize: 17.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: GestureDetector(
              child: SvgPicture.asset(
                'assets/svg/home/cart.svg',
                height: 20.h,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
              },
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 175,
                  width: double.infinity,
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
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 1,
                                  offset: const Offset(0, 0),
                                  blurStyle: BlurStyle.normal,
                                  spreadRadius: 0.2,
                                )
                              ]),
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PromotionDetailsScreen()));
                                  },
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
                SizedBox(height: 40.h)
              ],
            );
          },
          // separatorBuilder: (context, index) {
          //   return SizedBox(height: 20.h);
          // },
        ),
      )),
    );
  }
}
