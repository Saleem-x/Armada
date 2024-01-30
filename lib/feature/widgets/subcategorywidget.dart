import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategory extends StatefulWidget {
  const SubCategory({super.key});

  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 150,
      width: double.infinity,

      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.only(top: 5.h),
          child: Row(
            children: [
              SizedBox(width: 20.w),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 95.w,
                      child: Card(
                        color: const Color.fromARGB(255, 213, 243, 236),
                        surfaceTintColor:
                            const Color.fromARGB(255, 213, 243, 236),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/home/cleaning.png',
                                fit: BoxFit.fitHeight,
                              ),
                              Text(
                                'Cleaning',
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, ind) {
                    return const SizedBox(
                      width: 5,
                    );
                  },
                  itemCount: 10),
              SizedBox(
                width: 20.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
