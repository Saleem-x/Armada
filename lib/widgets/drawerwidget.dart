import 'package:armada/screens/orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const BeveledRectangleBorder(),
      width: 345,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 345,
            child: DrawerHeader(
                child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/svg/drawer/profile.svg'),
                    SizedBox(width: 15.w),
                    Text(
                      'LA ZONA CAFE-CASH',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 100, 54, 26)),
                    ),
                    SizedBox(width: 40.w),
                    GestureDetector(
                        child: const Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/drawer/user.svg',
                      height: 20,
                    ),
                    SizedBox(width: 28.w),
                    const Text('Vipin Goutham',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            // fontSize: 14.sp,
                            color: Colors.grey))
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/drawer/phone-call.svg',
                      height: 20,
                    ),
                    SizedBox(width: 28.w),
                    const Text('502544312',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            // fontSize: 14.sp,
                            color: Colors.grey))
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/drawer/email.svg',
                      height: 20,
                    ),
                    SizedBox(width: 28.w),
                    const Text('Roshni@turbosoft.technology',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            // fontSize: 14.sp,
                            color: Colors.grey))
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Container(
                      height: 52.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(
                            244, 219, 32, 39), // Set the background color
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '10,000.00',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Available Credit Limit',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Container(
                      height: 52.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        color: Colors.white, // Set the background color
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '10,000.00',
                            style: TextStyle(
                                color: Color.fromARGB(244, 219, 32, 39)),
                          ),
                          Text(
                            'Total Credit Limit',
                            style: TextStyle(fontSize: 10.sp),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/drawer/tollfree.svg'),
                    SizedBox(width: 20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '8004081',
                          style: TextStyle(
                              color: const Color.fromARGB(244, 219, 32, 39),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          '9:00 AM to 6:00 PM',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              // fontSize: 14.sp,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OrderScreen()));
            },
            leading: Image.asset('assets/images/drawer/orders.png'),
            title: const Text(
              'Orders',
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'View and manage your orders all in one place',
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            trailing: SvgPicture.asset(
              'assets/svg/categories/right.svg',
            ),
          ),
          ListTile(
            onTap: () {},
            leading: SvgPicture.asset(
              'assets/svg/drawer/changepass1.svg',
              height: 25.h,
            ),
            title: const Text('Invoices'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Access all your invoices',
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
          ),
          ListTile(
            onTap: () {},
            leading: Image.asset('assets/images/drawer/invoice.png'),
            title: const Text('Oustanding Invoices'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Keep track of your all outstanding invoices',
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
          ),
          ListTile(
            onTap: () {},
            leading: Image.asset('assets/images/drawer/brochure.png'),
            title: const Text('Brochures'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Browse and download our latest brochures on the go',
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
          ),
          ListTile(
            onTap: () {},
            leading: Image.asset('assets/images/drawer/support.png'),
            title: const Text('Support'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Get assistance on product/service related issues',
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
          ),
          ListTile(
            onTap: () {},
            leading:
                SvgPicture.asset('assets/svg/drawer/optassets/changepass.svg'),
            title: const Text('Change Password'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Change your current password',
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
          ),
          ListTile(
            onTap: () {},
            leading: Image.asset('assets/images/drawer/logout.png'),
            title: const Text('Logout'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Logout from your account',
                style: TextStyle(fontSize: 11.sp),
              ),
            ),
            trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
          ),
          ListTile(
            title: Column(
              children: [
                Text(
                  'Powered by',
                  style: TextStyle(fontSize: 6.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                    height: 20.h,
                    width: 50.w,
                    child: SvgPicture.asset(
                      'assets/svg/Path 838.svg',
                      fit: BoxFit.fill,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
