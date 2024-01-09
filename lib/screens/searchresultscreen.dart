import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  //int counter = 1;
  List<int> counters = List.generate(8, (index) => 1);
  List<int> pcounters = List.generate(8, (index) => 1);

  void incrementCounter(int index) {
    setState(() {
      counters[index]++;
    });
  }

  void decrementCounter(int index) {
    if (counters[index] > 1) {
      setState(() {
        counters[index]--;
      });
    }
  }

  void pincrementCounter(int index) {
    setState(() {
      pcounters[index]++;
    });
  }

  void pdecrementCounter(int index) {
    if (pcounters[index] > 1) {
      setState(() {
        pcounters[index]--;
      });
    }
  }

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
          'Search Result',
          style: TextStyle(fontSize: 17.sp),
        ),
      ),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        //width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 20.w),
                Expanded(
                  child: Container(
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
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                          blurStyle: BlurStyle.normal,
                          spreadRadius: 0.7,
                        )
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Milk',
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: -3),
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(vertical: 11.h),
                            child: SvgPicture.asset(
                              'assets/svg/home/search.svg',
                            ),
                          ),
                          border: InputBorder.none,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child:
                                SvgPicture.asset('assets/svg/home/clear.svg'),
                          )),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  height: 34.h,
                  minWidth: 10.w,
                  color: Colors.white,
                  child: SvgPicture.asset(
                    'assets/svg/search_result/filter.svg',
                  ),
                ),
                SizedBox(width: 20.w),
              ],
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .8,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) => Container(
                    height: 230.h,
                    width: 185.w,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: Colors.grey
                              .withOpacity(0.3)), // Set the background color
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                          blurStyle: BlurStyle.normal,
                          spreadRadius: 0.7,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.w, top: 10.h),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/categories/NoPath - Copy (10).png',
                            height: 100.h,
                            width: 75.w,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Rainbow Milk Cream',
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Cs',
                                        style: TextStyle(fontSize: 10.sp),
                                      ),
                                      SizedBox(width: 15.w),
                                      Icon(Icons.keyboard_arrow_down,
                                          color: Colors.grey, size: 12.sp),
                                    ],
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    'AED 30.00',
                                    style: TextStyle(
                                        fontSize: 8.sp, color: Colors.red),
                                  ),
                                ],
                              ),
                              SizedBox(width: 4.w),
                              GestureDetector(
                                onTap: () {
                                  decrementCounter(index);
                                },
                                child: SvgPicture.asset(
                                    'assets/svg/home/minus.svg'),
                              ),
                              Text('${counters[index]}'),
                              GestureDetector(
                                onTap: () {
                                  incrementCounter(index);
                                },
                                child: SvgPicture.asset(
                                    'assets/svg/home/plus.svg'),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pc',
                                        style: TextStyle(fontSize: 10.sp),
                                      ),
                                      SizedBox(width: 15.w),
                                      Icon(Icons.keyboard_arrow_down,
                                          color: Colors.grey, size: 12.sp),
                                    ],
                                  ),
                                  SizedBox(height: 3.h),
                                  Text(
                                    'AED 30.00',
                                    style: TextStyle(
                                        fontSize: 8.sp, color: Colors.red),
                                  ),
                                ],
                              ),
                              SizedBox(width: 4.w),
                              GestureDetector(
                                onTap: () {
                                  pdecrementCounter(index);
                                },
                                child: SvgPicture.asset(
                                    'assets/svg/home/minus.svg'),
                              ),
                              Text('${pcounters[index]}'),
                              GestureDetector(
                                onTap: () {
                                  pincrementCounter(index);
                                },
                                child: SvgPicture.asset(
                                    'assets/svg/home/plus.svg'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
