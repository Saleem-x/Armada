import 'package:armada/screens/cartscreen.dart';
import 'package:armada/widgets/supdetbottomwid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SupportDetails extends StatefulWidget {
  const SupportDetails({super.key});

  @override
  State<SupportDetails> createState() => _SupportDetailsState();
}

class _SupportDetailsState extends State<SupportDetails> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          shadowColor: Colors.grey.withOpacity(0.3),
          elevation: 0.5,
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
            'Support Detail',
            style: TextStyle(fontSize: 19.sp),
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                height: isExpanded ? 230.h : 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 233, 183, 179)
                        .withOpacity(0.2)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '16 Aug 2021',
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Divella Penne Pasta 500g',
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ],
                          ),
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Open',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color:
                                        const Color.fromARGB(244, 219, 32, 39)),
                              ),
                              SizedBox(height: 3.h),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isExpanded = !isExpanded;
                                  });
                                },
                                child: Container(
                                  height: 24.h,
                                  width: 72.w,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow[100],
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 1,
                                          offset: const Offset(0, 0),
                                          blurStyle: BlurStyle.normal,
                                          spreadRadius: 0.2,
                                        )
                                      ]),
                                  child: Center(
                                    child: Text(
                                      isExpanded ? 'View Less' : 'View Details',
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Visibility(
                          visible: isExpanded,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 3.h),
                              Text(
                                'Reason',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Batch 109 packaging is broken',
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                'Comments(if any)',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              SizedBox(height: 10.h),
                              Image.asset(
                                'assets/home/4.png',
                                height: 55.h,
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              const Divider(),
              SizedBox(height: 5.h),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  //height: 150.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 153, 152, 152)
                        .withOpacity(0.1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Support | 16 Aug 2021',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Recieved your request. We will look into it and get back you soon. Thank you!',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        SizedBox(height: 5.h),
                        Image.asset('assets/home/4.png', height: 55.h)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const SupetBottomWidget());
  }
}
