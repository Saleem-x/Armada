import 'package:armada/screens/cartscreen.dart';
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                height: isExpanded ? 230.0 : 70.0,
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
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Divella Penne Pasta 500g',
                                style: TextStyle(fontSize: 14.sp),
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
                                    fontSize: 12.sp,
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
                                  fontSize: 10.sp,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Batch 109 packaging is broken',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                'Comments(if any)',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 3.h),
                              Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                style: TextStyle(fontSize: 12.sp),
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
                  height: 150.h,
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
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'Recieved your request. We will look into it and get back you soon. Thank you!',
                          style: TextStyle(fontSize: 14.sp),
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
        bottomNavigationBar: Container(
          height: 120.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,

            border: Border.all(
                color:
                    Colors.grey.withOpacity(0.3)), // Set the background color
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
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                            color: Colors.grey
                                .withOpacity(0.3)), // Set the background color
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
                      child: Center(
                        child: SvgPicture.asset('assets/svg/support/icon.svg'),
                      ),
                    ),
                    Container(
                      height: 44.h,
                      width: 315.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Colors.grey.withOpacity(0.4)),
                        // border: Border.all(
                        //     color: Colors.grey
                        //         .withOpacity(0.3)), // Set the background color
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.3),
                        //     blurRadius: 1,
                        //     offset: const Offset(0, 0),
                        //     blurStyle: BlurStyle.normal,
                        //     spreadRadius: 0.2,
                        //   )
                        // ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 15.w),
                            Expanded(
                                child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type here',
                                  hintStyle: TextStyle(fontSize: 14.sp)),
                            )),
                            GestureDetector(
                              child: Container(
                                  height: 32.h,
                                  width: 44.w,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          244, 219, 32, 39),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/svg/support/send.svg',
                                      height: 40,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 180,
                      child: MaterialButton(
                        onPressed: () {},
                        color: const Color.fromARGB(244, 219, 32, 39),
                        height: 38.h,
                        //minWidth: 140.w,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Mark as Resolved',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180.w,
                      child: MaterialButton(
                        onPressed: () {},
                        color: Colors.yellow[800],
                        height: 38.h,
                        //minWidth: 140.w,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Escalate to next level',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
