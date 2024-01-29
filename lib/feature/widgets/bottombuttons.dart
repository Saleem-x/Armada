import 'package:armada/feature/screens/cartscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomButtonsWidget extends StatelessWidget {
  const BottomButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            onPressed: () {},
            color: Colors.white,
            height: 45.h,
            minWidth: 160.w,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.black.withOpacity(0.5),
                  width: 1.w,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              'View All Items',
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            },
            child: Container(
              height: 45.h,
              width: 160.w,
              decoration: BoxDecoration(
                color: const Color.fromARGB(244, 219, 32, 39),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '5 Pc Selected',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Proceed to Cart',
                          style:
                              TextStyle(fontSize: 13.sp, color: Colors.white),
                        )
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/svg/home/arrow_right.svg',
                      height: 12.h,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
