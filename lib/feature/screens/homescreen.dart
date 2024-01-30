import 'package:armada/feature/screens/cartscreen.dart';
import 'package:armada/feature/screens/categoryscreen.dart';
import 'package:armada/feature/state/bloc/featuredcategories/featuredcategories_bloc.dart';
import 'package:armada/feature/state/bloc/promotions/promtions_bloc.dart';
import 'package:armada/feature/state/bloc/recentorders/recent_orders_bloc.dart';
import 'package:armada/feature/widgets/drawerwidget.dart';
import 'package:armada/feature/widgets/featuredwidget.dart';
import 'package:armada/feature/widgets/freqorderedwidget.dart';
import 'package:armada/feature/widgets/hotdealwidget.dart';
import 'package:armada/feature/widgets/slidingwidget.dart';
import 'package:armada/feature/widgets/subcategorywidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPersistentFrameCallback(
    //   (_) {
    //   },
    // );
    context
        .read<FeaturedcategoriesBloc>()
        .add(const GetallFeaturedCategoriesEvent());
    context.read<RecentOrdersBloc>().add(
          const GetRecentOrdersEvent(cusID: '7', userID: '3155'),
        );
    context.read<PromtionsBloc>().add(const Getallpromotions());
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
          child: Builder(
            builder: (BuildContext context) => GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: SvgPicture.asset(
                'assets/svg/home/menu.svg',
                width: 10,
              ),
            ),
          ),
        ),
        title: SvgPicture.asset(
          'assets/svg/logo.svg',
          width: 170,
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
                    builder: (context) => const CartScreen(),
                  ),
                );
              },
            ),
          )
        ],
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 20.w),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CategoryScreen()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    height: 32.h,
                    color: const Color.fromARGB(244, 175, 25, 30),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svg/home/categories.svg',
                          height: 12,
                        ),
                        Text(
                          '  Categories',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 1,
                            offset: const Offset(0, 0),
                            blurStyle: BlurStyle.normal,
                            spreadRadius: 0.2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: SvgPicture.asset(
                                  'assets/svg/home/search.svg'),
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Search here',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/svg/home/clear.svg'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                ],
              ),
              SizedBox(height: 15.h),
              SizedBox(
                width: 410.w,
                //height: 230.h,
                child: const SlidingWidget(),
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Text(
                    'Featured Sub Categories',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: const Color.fromARGB(255, 100, 54, 26)),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              SizedBox(
                height: 120.h,
                width: double.infinity,
                child: const SubCategory(),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Text(
                    'Featured Categories',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: const Color.fromARGB(255, 100, 54, 26)),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              const SizedBox(
                width: double.infinity,
                height: 160,
                child: FeaturedCategory(),
              ),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Text(
                    'Frequently Ordered',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: const Color.fromARGB(255, 100, 54, 26)),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: FrequentlyOrdered(),
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  SizedBox(width: 20.w),
                  Text(
                    'Hot Deals',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: const Color.fromARGB(255, 100, 54, 26)),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const SizedBox(
                height: 200,
                width: double.infinity,
                child: HotDeals(),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
