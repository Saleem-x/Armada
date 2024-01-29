import 'package:armada/feature/state/bloc/banners/banners_bloc.dart';
import 'package:armada/feature/state/cubit/homecarousal/home_carousalchanger_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlidingWidget extends StatefulWidget {
  const SlidingWidget({super.key});

  @override
  State<SlidingWidget> createState() => _SlidingWisgetState();
}

class _SlidingWisgetState extends State<SlidingWidget> {
  //final CarouselController carousel_Controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BannersBloc>().add(const GetbannersEvent());
    });
    return BlocBuilder<BannersBloc, BannersState>(
      builder: (context, state) {
        return state.when(
            getBannerstate: (bannerslist) => Column(
                  children: [
                    bannerslist == null
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : InkWell(
                            child: CarouselSlider(
                              items: bannerslist
                                  .map((item) => Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.w),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  item.image!,
                                                ),
                                                fit: BoxFit.fitHeight),
                                          ),

                                          /*  child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.w),
                                            child: Image.network(
                                              item.image!,
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                            ),
                                          ), */
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
                                  context
                                      .read<HomeCarousalchangerCubit>()
                                      .changepage(index);
                                },
                              ),
                            ),
                            onTap: () {
                              //print('clicked');
                            },
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        bannerslist == null ? 3 : bannerslist.length,
                        (index) {
                          return BlocBuilder<HomeCarousalchangerCubit,
                              HomeCarousalchangerState>(
                            builder: (context, idx) {
                              return Container(
                                width: 8.w,
                                height: 4.h,
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: idx.idx == index
                                      ? Colors.red
                                      : Colors.grey,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
            getbannersfailedsstate: () {
              return const SizedBox();
            });
      },
    );
  }
}
