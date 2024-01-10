//import 'package:armada/widgets/subcatwidget.dart';
import 'package:armada/screens/cartscreen.dart';
import 'package:armada/screens/searchresultscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  // bool isExpanded = false;
  // int selectedIndex = -1;
  List<bool> isExpandedList = List.generate(8, (index) => false);
  int selectedIndex = -1;

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
          'Categories',
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
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
            child: Column(
              children: [
                Container(
                  height: 34.h,
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
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search items, brands, categories etc',
                      contentPadding: const EdgeInsets.all(15.0),
                      hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.7), fontSize: 11.sp),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(vertical: 11.h),
                        child: SvgPicture.asset(
                          'assets/svg/home/search.svg',
                        ),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                // selectedIndex = index;
                                // isExpanded = !isExpanded;
                                if (selectedIndex == index) {
                                  isExpandedList[index] =
                                      !isExpandedList[index];
                                } else {
                                  selectedIndex = index;
                                  isExpandedList =
                                      List.generate(8, (index) => false);
                                  isExpandedList[index] = true;
                                }
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: isExpandedList[index]
                                      ? Colors.teal.withOpacity(0.1)
                                      : Colors.white,
                                  border: isExpandedList[index]
                                      ? Border.all(color: Colors.transparent)
                                      : Border.all(
                                          color: Colors.grey.withOpacity(0.3)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 1,
                                      offset: const Offset(0, 0),
                                      blurStyle: BlurStyle.normal,
                                      spreadRadius: 0.2,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SearchResult()));
                                      },
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/categories/NoPath - Copy (11).png',
                                            fit: BoxFit.fitHeight,
                                            height: 50.h,
                                          ),
                                          SizedBox(width: 15.w),
                                          Text(
                                            'Fruits & Vegetables',
                                            style: TextStyle(fontSize: 12.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    trailing: isExpandedList[index]
                                        ? SvgPicture.asset(
                                            'assets/svg/categories/down.svg',
                                          )
                                        : SvgPicture.asset(
                                            'assets/svg/categories/right.svg',
                                          ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (isExpandedList[index])
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: YourNewWidget(),
                            ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 15.h),
                    itemCount: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class YourNewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        // Customize your card widget here
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/categories/NoPath - Copy (4).png'),
              SizedBox(height: 4.h),
              Text(
                'Dairy',
                style: TextStyle(fontSize: 8.sp),
              )
            ],
          ),
        );
      },
      itemCount: 9, // Adjust itemCount accordingly
    );
  }
}
