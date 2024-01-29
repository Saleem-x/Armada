import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocumentsListWidget extends StatefulWidget {
  const DocumentsListWidget({super.key});

  @override
  State<DocumentsListWidget> createState() => _DocumentsListWidgetState();
}

class _DocumentsListWidgetState extends State<DocumentsListWidget> {
  //bool isVerified = true;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 150.h,
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
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('VAT Certificate',
                                  style: TextStyle(fontSize: 12.sp)),
                              SizedBox(height: 3.h),
                              Text('VAT133241456',
                                  style: TextStyle(fontSize: 16.sp)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 18),
                            child: Text(
                              index == 1 ? 'Verified' : 'Pending',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: index == 1
                                    ? Colors.indigo[900]
                                    : Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Uploaded on',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '16 Aug 2021, 13:45',
                                style: TextStyle(fontSize: 13.sp),
                              )
                            ],
                          ),
                          SizedBox(width: 68.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Uploaded by',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'Illyas Mohammed',
                                style: TextStyle(fontSize: 13.sp),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40.h,
                            width: 145.w,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 233, 183, 179)
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 17.w),
                                SvgPicture.asset('assets/svg/profile/view.svg'),
                                SizedBox(width: 12.w),
                                Text(
                                  'View Documents',
                                  style: TextStyle(fontSize: 11.sp),
                                )
                              ],
                            ),
                          ),
                          // SizedBox(width: 5.w),
                          Container(
                            height: 40.h,
                            width: 145.w,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 233, 183, 179)
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 17.w),
                                SvgPicture.asset('assets/svg/profile/edit.svg'),
                                SizedBox(width: 12.w),
                                Text(
                                  'Edit Documents',
                                  style: TextStyle(fontSize: 11.sp),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12.h)
            ],
          );
        });
  }
}
