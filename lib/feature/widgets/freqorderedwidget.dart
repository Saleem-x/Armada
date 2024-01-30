import 'package:armada/feature/data/models/delete_cart_model/delete_cart_model.dart';
import 'package:armada/feature/data/models/insert_cart_model/insert_cart_model.dart';
import 'package:armada/feature/state/bloc/cartoperations/cartoperations_bloc.dart';
import 'package:armada/feature/state/bloc/recentorders/recent_orders_bloc.dart';
import 'package:armada/feature/widgets/freqorddropdwnwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class FrequentlyOrdered extends StatefulWidget {
  const FrequentlyOrdered({super.key});

  @override
  State<FrequentlyOrdered> createState() => _FrequentlyOrderedState();
}

List<int> counters = List.generate(8, (index) => 1);

class _FrequentlyOrderedState extends State<FrequentlyOrdered> {
  late String dropdownValue;

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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentOrdersBloc, RecentOrdersState>(
      builder: (context, state) {
        return state.when(
          getRecentOrdersState: (orders) => orders == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  itemCount: orders.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .7,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) =>
                      BlocBuilder<CartoperationsBloc, CartoperationsState>(
                    builder: (context, cartoperation) {
                      return Container(
                        // height: 270,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
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
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 6,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network(
                                orders[index].itmImage!,
                                height: 100.h,
                                width: 75.w,
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                orders[index].itmName!,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 13.sp),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            DropdownButton(
                                              isDense: true,
                                              underline: Container(),
                                              value: orders[index]
                                                  .uom![0]
                                                  .uomName!,
                                              icon: Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.grey,
                                                size: 12.sp,
                                              ),
                                              items: [
                                                orders[index].uom![0].uomName!
                                              ].map((String item) {
                                                return DropdownMenuItem(
                                                  value: orders[index]
                                                      .uom![0]
                                                      .uomName!,
                                                  child: CustomDropdownMenuItem(
                                                    text: orders[index]
                                                        .uom![0]
                                                        .uomName!,
                                                  ),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {},
                                            ),
                                            Text(
                                              'AED ${orders[index].uom![0].standardPrice}',
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: Colors.red),
                                            ),
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // decrementCounter(index);

                                            context
                                                .read<CartoperationsBloc>()
                                                .add(
                                                  DeleteCartItem(
                                                    cartitem: DeleteCartModel(
                                                        userId: '3155',
                                                        itmId: orders[index]
                                                            .itmId),
                                                  ),
                                                );
                                          },
                                          child: SvgPicture.asset(
                                            'assets/svg/home/minus.svg',
                                            height: 20.h,
                                            width: 15.w,
                                          ),
                                        ),
                                        Text(
                                          '${orders[index].itmCount}',
                                          style: TextStyle(fontSize: 12.sp),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // incrementCounter(index);

                                            context
                                                .read<CartoperationsBloc>()
                                                .add(
                                                  InsertTOCart(
                                                    cartitem: InsertCartModel(
                                                        cusId: '7',
                                                        higherQty: '1',
                                                        higherUom:
                                                            '${orders[index].uom![0].uomId}',
                                                        itmId:
                                                            orders[index].itmId,
                                                        lowerQty: '1',
                                                        lowerUom: '1',
                                                        userId: '3155'),
                                                  ),
                                                );
                                          },
                                          child: SvgPicture.asset(
                                            'assets/svg/home/plus.svg',
                                            height: 20.h,
                                            width: 15.w,
                                          ),
                                        )
                                      ])),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                          'assets/svg/home/adduom.svg',
                                          height: 15.h,
                                          width: 15.w,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Add Another UOM',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12.sp),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
          getrecentfailed: () => const SizedBox(),
        );
      },
    );
  }

  var items = [
    'Cs',
    'Item 2',
  ];
}
