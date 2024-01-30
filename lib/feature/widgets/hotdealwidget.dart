import 'package:armada/feature/screens/promotionscreen.dart';
import 'package:armada/feature/state/bloc/promotions/promtions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class HotDeals extends StatelessWidget {
  const HotDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromtionsBloc, PromtionsState>(
      builder: (context, state) {
        return state.promtions == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 20.w),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              Container(
                                height: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        state.promtions![index].prmImage!,
                                      ),
                                      fit: BoxFit.cover),
                                ),
                                /*  child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    'assets/home/promo2.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ), */
                              ),
                              Positioned(
                                left: 20,
                                right: 20,
                                top: 40,
                                child: Container(
                                  height: 100.h,
                                  width: 200.w,
                                  decoration: BoxDecoration(
                                      color:
                                          Colors.transparent.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 15.w, top: 8.h),
                                    child: Text(
                                      /*  'Expires in 17 Days 12 hours' */ calculatetime(
                                          state.promtions![index].rcpEndDate!),
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 20,
                                right: 20,
                                top: 75,
                                child: Container(
                                  height: 100.h,
                                  width: 200.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 1,
                                          offset: const Offset(0, 0),
                                          blurStyle: BlurStyle.normal,
                                          spreadRadius: 0.2,
                                        )
                                      ]),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 22.w, top: 15.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          state.promtions![index].prmName ?? '',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.sp,
                                              color: const Color.fromARGB(
                                                  255, 100, 54, 26)),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          state.promtions![index].prtName ?? '',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 15.sp),
                                        ),
                                        SizedBox(height: 4.h),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PromotionScreen(
                                                  promotions:
                                                      state.promtions ?? [],
                                                ),
                                              ),
                                            );
                                          },
                                          child: Row(
                                            children: [
                                              Text('View Details  ',
                                                  style: TextStyle(
                                                      color: Colors.red,
                                                      fontSize: 14.sp,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Icon(Icons.chevron_right,
                                                  color: Colors.red,
                                                  size: 16.sp)
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 10.w);
                      },
                      itemCount: state.promtions!.length,
                    ),
                    SizedBox(width: 20.w)
                  ],
                ),
              );
      },
    );
  }

  calculatetime(String datetime) {
    DateFormat dateFormat = DateFormat("MM/dd/yyyy hh:mm:ss a");

    DateTime givenDateTime = dateFormat.parse(datetime);

    DateTime now = DateTime.now();

    Duration difference = givenDateTime.difference(now);

    int remainingHours = difference.inHours % 24;

    int remainingDays = difference.inDays;

    if (remainingDays > 0) {
      if (remainingHours > 0) {
        return 'Expires in $remainingDays Days $remainingHours hours';
      } else {
        return 'Expires in $remainingDays Days';
      }
    } else {
      return 'Expires in $remainingHours hours';
    }
  }
}
