import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedCategory extends StatefulWidget {
  const FeaturedCategory({super.key});

  @override
  State<FeaturedCategory> createState() => _FeaturedCategoryState();
}

class _FeaturedCategoryState extends State<FeaturedCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 20),
        child: Container(
          //height: 150,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 260.w,
                        child: Card(
                          surfaceTintColor: Colors.white,
                          shadowColor: Colors.grey,
                          child: Image.asset('assets/home/fc_1.png',
                              fit: BoxFit.fill),
                        ),
                      );
                    },
                    separatorBuilder: (context, ind) {
                      return SizedBox(
                        width: 5.w,
                      );
                    },
                    itemCount: 3),
                SizedBox(
                  width: 20.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
