import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidingWidget extends StatefulWidget {
  const SlidingWidget({super.key});

  @override
  State<SlidingWidget> createState() => _SlidingWisgetState();
}

class _SlidingWisgetState extends State<SlidingWidget> {
  List imageList = [
    {"id": 1, "image_path": 'assets/home/slider1.png'},
    {"id": 2, "image_path": 'assets/home/slider1.png'},
    {"id": 3, "image_path": 'assets/home/slider1.png'},
  ];

  //final CarouselController carousel_Controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: CarouselSlider(
            items: imageList
                .map((item) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Container(
                        child: Image.asset(
                          item['image_path'],
                          fit: BoxFit.fitHeight,
                          width: double.infinity,
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              scrollPhysics: const BouncingScrollPhysics(),
              autoPlay: true,
              viewportFraction: 1,
              aspectRatio: 2,
              enableInfiniteScroll: true,
              reverse: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          onTap: () {
            print('clicked');
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Container(
              width: 8.w,
              height: 4.h,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: _currentIndex == index ? Colors.red : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}
