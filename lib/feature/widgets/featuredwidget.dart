import 'package:armada/feature/state/bloc/featuredcategories/featuredcategories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedCategory extends StatelessWidget {
  const FeaturedCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 20),
      child: SizedBox(
        //height: 150,
        width: double.infinity,
        child: BlocBuilder<FeaturedcategoriesBloc, FeaturedcategoriesState>(
          builder: (context, state) {
            return state.when(
                getfeatiredcategories: (categories) => categories == null
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : SingleChildScrollView(
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
                                  return SizedBox(
                                    width: 260.w,
                                    child: Card(
                                      surfaceTintColor: Colors.white,
                                      shadowColor: Colors.grey,
                                      child: /*  ClipRRect(
                                        child: Image.network(
                                            categories[index].fctImage!,
                                            fit: BoxFit.fill),
                                      ) */
                                          Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              categories[index].fctImage!,
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, ind) {
                                  return SizedBox(
                                    width: 5.w,
                                  );
                                },
                                itemCount: categories.length),
                            SizedBox(
                              width: 20.w,
                            ),
                          ],
                        ),
                      ),
                getcatgFailedState: () => const SizedBox());
          },
        ),
      ),
    );
  }
}
