import 'package:armada/feature/widgets/documentscalendarwidget.dart';
import 'package:armada/feature/widgets/documentsdropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UploadDocumentsScreen extends StatefulWidget {
  const UploadDocumentsScreen({super.key});

  @override
  State<UploadDocumentsScreen> createState() => _UploadDocumentsScreenState();
}

class _UploadDocumentsScreenState extends State<UploadDocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          'Upload Documents',
          style: TextStyle(fontSize: 19.sp),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Document Type',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  )),
              SizedBox(height: 10.h),
              Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent, // Set the background color
                  border: Border.all(color: Colors.grey.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: DocumentsDropdownWidget()),
              ),
              SizedBox(height: 20.h),
              Text('Document Number',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  )),
              SizedBox(height: 10.h),
              Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                  border: Border.all(
                      color: Colors.grey
                          .withOpacity(0.3)), // Set the background color
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none)),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Start Date',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey,
                          )),
                      SizedBox(height: 10.h),
                      const Padding(
                          padding: EdgeInsets.zero,
                          child: DocumentsCalendarWidget()),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiry Date',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey,
                          )),
                      SizedBox(height: 10.h),
                      const Padding(
                          padding: EdgeInsets.zero,
                          child: DocumentsCalendarWidget()),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text('LPO Attachment',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey,
                  )),
              SizedBox(height: 10.h),
              Container(
                  height: 42.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                    color: Colors.transparent, // Set the background color
                    border: Border.all(color: Colors.grey.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              'assets/svg/search_result/attachment.svg'),
                          SizedBox(width: 10.w),
                          Text('Select file',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp)),
                        ],
                      ))),
              SizedBox(height: 190.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 50.w),
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(244, 219, 32, 39),
                    height: 40.h,
                    minWidth: 140.w,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Text(
                          'Submit',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(width: 90.w),
                        SvgPicture.asset(
                          'assets/svg/categories/right.svg',
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
