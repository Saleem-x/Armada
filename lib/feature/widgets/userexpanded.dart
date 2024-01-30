import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class UserScreenExpanded extends StatefulWidget {
  const UserScreenExpanded({super.key});

  @override
  State<UserScreenExpanded> createState() => _UserScreenExpandedState();
}

class _UserScreenExpandedState extends State<UserScreenExpanded> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Container(
                  height: isExpanded ? 230.h : 70.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
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
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Branch User',
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                              )),
                          Text('Bretilla Vesley',
                              style: TextStyle(
                                fontSize: 17.sp,
                              )),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/drawer/phone-call.svg',
                                color: Colors.black,
                              ),
                              SizedBox(width: 6.w),
                              Text('971 50123 4567',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                              SizedBox(width: 20.w),
                              SvgPicture.asset(
                                'assets/svg/drawer/email.svg',
                                color: Colors.black,
                              ),
                              SizedBox(width: 6.w),
                              Text('breti@armada.com',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          ),
                          // Visibility(
                          //     visible: isExpanded,
                          //     child: Column(
                          //       crossAxisAlignment: CrossAxisAlignment.start,
                          //       children: [

                          //       ],
                          //     ))
                        ],
                      ),
                      Text(
                        index == 0 ? 'Active' : 'Inactive',
                        style: TextStyle(
                          color: index == 0 ? Colors.indigo[900] : Colors.red,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Container(
              //    // Set the background color
              //
              //   child: Theme(
              //     data: ThemeData().copyWith(dividerColor: Colors.transparent),
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 10),
              //       child: ExpansionTile(
              //         title: Container(
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //
              //             ],
              //           ),
              //         ),
              //         subtitle: Row(
              //           children: [
              //
              //
              //           ],
              //         ),
              //         trailing: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           //crossAxisAlignment: CrossAxisAlignment.end,
              //           children: [
              //             Text(
              //               'active',
              //               // index == 0 ? 'Active' : 'Inactive',
              //               style: TextStyle(
              //                 color: Colors.indigo[900],
              //                 // index == 0 ? Colors.indigo[900] : Colors.red,
              //                 fontSize: 13.sp,
              //               ),
              //             ),
              //           ],
              //         ),
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.symmetric(horizontal: 15),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 DottedLine(
              //                   dashColor: Colors.grey.withOpacity(0.4),
              //                 ),
              //                 Padding(
              //                   padding:
              //                       const EdgeInsets.symmetric(horizontal: 5),
              //                   child: Row(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       Column(
              //                         crossAxisAlignment:
              //                             CrossAxisAlignment.start,
              //                         children: [
              //                           SizedBox(height: 5.sp),
              //                           Text(
              //                             'Created On',
              //                             style: TextStyle(
              //                               fontSize: 13.sp,
              //                               color: Colors.grey,
              //                               fontWeight: FontWeight.w400,
              //                             ),
              //                           ),
              //                           Text(
              //                             '16 Aug 2021',
              //                             style: TextStyle(fontSize: 13.sp),
              //                           ),
              //                           SizedBox(height: 8.h),
              //                           Text(
              //                             'Roles',
              //                             style: TextStyle(
              //                               fontSize: 13.sp,
              //                               color: Colors.grey,
              //                               fontWeight: FontWeight.w400,
              //                             ),
              //                           ),
              //                           Text(
              //                             'Admin, Order Taker',
              //                             style: TextStyle(fontSize: 14.sp),
              //                           ),
              //                           SizedBox(height: 8.h),
              //                           Text(
              //                             'Outlet Name',
              //                             style: TextStyle(
              //                               fontSize: 13.sp,
              //                               color: Colors.grey,
              //                               fontWeight: FontWeight.w400,
              //                             ),
              //                           ),
              //                           Text(
              //                             'B2B Test Cutomer',
              //                             style: TextStyle(fontSize: 14.sp),
              //                           ),
              //                         ],
              //                       ),
              //                       SizedBox(width: 22.w),
              //                       Column(
              //                         crossAxisAlignment:
              //                             CrossAxisAlignment.start,
              //                         children: [
              //                           SizedBox(height: 5.h),
              //                           Text(
              //                             'Approval',
              //                             style: TextStyle(
              //                               fontSize: 13.sp,
              //                               color: Colors.grey,
              //                               fontWeight: FontWeight.w400,
              //                             ),
              //                           ),
              //                           Text(
              //                             'Approved',
              //                             style: TextStyle(fontSize: 14.sp),
              //                           ),
              //                           SizedBox(height: 8.h),
              //                         ],
              //                       )
              //                     ],
              //                   ),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 10.h)
            ],
          );
        });
  }
}
