import 'package:armada/feature/screens/changepswdscreen.dart';
import 'package:armada/feature/screens/invoicescreen.dart';
import 'package:armada/feature/screens/orders.dart';
import 'package:armada/feature/screens/outstandinginvoices.dart';
import 'package:armada/feature/screens/profilescreen.dart';
import 'package:armada/feature/screens/specialprice.dart';
import 'package:armada/feature/screens/supportscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const OrderScreen()));
          },
          leading: Image.asset('assets/images/drawer/orders.png', height: 25.h),
          title: Text(
            'Orders',
            style: TextStyle(fontSize: 16.sp),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'View and manage your orders all in one place',
              style: TextStyle(fontSize: 13.sp),
            ),
          ),
          trailing: SvgPicture.asset(
            'assets/svg/categories/right.svg',
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InvoiceScreen()));
          },
          leading:
              Image.asset('assets/images/drawer/invoice.png', height: 25.h),
          title: Text(
            'Invoices',
            style: TextStyle(fontSize: 16.sp),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Access all your invoices',
              style: TextStyle(fontSize: 13.sp),
            ),
          ),
          trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const OutstandingInvoices()));
          },
          leading:
              Image.asset('assets/images/drawer/invoice.png', height: 25.h),
          title: Text(
            'Oustanding Invoices',
            style: TextStyle(fontSize: 16.sp),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Keep track of your all outstanding invoices',
              style: TextStyle(fontSize: 13.sp),
            ),
          ),
          trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
        ),
        ListTile(
          onTap: () {},
          leading:
              Image.asset('assets/images/drawer/brochure.png', height: 25.h),
          title: Text(
            'Brochures',
            style: TextStyle(fontSize: 16.sp),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Browse and download our latest brochures on the go',
              style: TextStyle(fontSize: 13.sp),
            ),
          ),
          trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SpecialPriceScreen()));
          },
          leading:
              Image.asset('assets/images/drawer/brochure.png', height: 25.h),
          title: Text(
            'Special Price',
            style: TextStyle(fontSize: 16.sp),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Browse and download our latest brochures on the go',
              style: TextStyle(fontSize: 13.sp),
            ),
          ),
          trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SpportScreen()));
          },
          leading:
              Image.asset('assets/images/drawer/support.png', height: 25.h),
          title: Text(
            'Support',
            style: TextStyle(fontSize: 16.sp),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Get assistance on product/service related issues',
              style: TextStyle(fontSize: 13.sp),
            ),
          ),
          trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()));
          },
          leading: SvgPicture.asset('assets/svg/drawer/user.svg',
              height: 25.h, color: const Color.fromARGB(255, 100, 54, 26)),
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 16.sp),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Customer Profile , details and options for updating  details',
              style: TextStyle(fontSize: 13.sp),
            ),
          ),
          trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChangePassword()));
          },
          leading: Image.asset(
            'assets/images/drawer/changepass.png',
            height: 25.h,
          ),
          title: Text(
            'Change Password',
            style: TextStyle(fontSize: 16.sp),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Change your current password',
              style: TextStyle(fontSize: 13.sp),
            ),
          ),
          trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
        ),
        ListTile(
          onTap: () {},
          leading: Image.asset('assets/images/drawer/logout.png', height: 25.h),
          title: Text(
            'Logout',
            style: TextStyle(fontSize: 16.sp),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Logout from your account',
              style: TextStyle(fontSize: 13.sp),
            ),
          ),
          trailing: SvgPicture.asset('assets/svg/categories/right.svg'),
        ),
        ListTile(
          title: Column(
            children: [
              Text(
                'Powered by',
                style: TextStyle(fontSize: 8.sp, fontWeight: FontWeight.w600),
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
    );
  }
}
