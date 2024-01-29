import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialPriceScreen extends StatelessWidget {
  const SpecialPriceScreen({super.key});

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
          'Special Price',
          style: TextStyle(fontSize: 19.sp),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      // border: Border.all(
                      // color:
                      //     Colors.grey.withOpacity(0.3)), // Set the background color
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
                    child: Theme(
                      data: ThemeData()
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('12321231',
                                    style: TextStyle(fontSize: 15.sp)),
                                Text(
                                  "Boston's most advanced \ncompression wear \ntechnology increases muscle",
                                  style: TextStyle(fontSize: 10.sp),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 3.h),
                                Text('Uom',
                                    style: TextStyle(
                                        fontSize: 9.sp, color: Colors.grey)),
                                Text('Box',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                    ))
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 3.h),
                                Text('Std Price',
                                    style: TextStyle(
                                        fontSize: 9.sp, color: Colors.grey)),
                                Text('120.00',
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                    ))
                              ],
                            )
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Spcl Price',
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400)),
                            Text('110.00',
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.red))
                          ],
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 5, right: 22),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Brand',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey)),
                                    Text('Brand 01',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                        ))
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Category',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey)),
                                    Text('Category 01',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                        )),
                                    SizedBox(height: 10.h)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('VAT',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey)),
                                    Text('5%',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                        )),
                                    SizedBox(height: 10.h)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text('Ret Price',
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey)),
                                    Text('115.00',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                        )),
                                    SizedBox(height: 10.h)
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h)
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
