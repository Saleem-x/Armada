import 'package:armada/feature/data/di/injectable.dart';
import 'package:armada/feature/screens/login.dart';
import 'package:armada/feature/state/bloc/banners/banners_bloc.dart';
import 'package:armada/feature/state/bloc/cartoperations/cartoperations_bloc.dart';
import 'package:armada/feature/state/bloc/featuredcategories/featuredcategories_bloc.dart';
import 'package:armada/feature/state/bloc/promotions/promtions_bloc.dart';
import 'package:armada/feature/state/bloc/recentorders/recent_orders_bloc.dart';
import 'package:armada/feature/state/cubit/counterhome/counter_home_cubit.dart';
import 'package:armada/feature/state/bloc/login/login_bloc.dart';
import 'package:armada/feature/state/cubit/homecarousal/home_carousalchanger_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureinjection();
  runApp(const ArmadaApp());
}

class ArmadaApp extends StatelessWidget {
  const ArmadaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getit<BannersBloc>(),
            ),
            BlocProvider<HomeCarousalchangerCubit>(
              create: (context) => HomeCarousalchangerCubit(),
            ),
            BlocProvider(
              create: (context) => getit<FeaturedcategoriesBloc>(),
            ),
            BlocProvider(
              create: (context) => getit<RecentOrdersBloc>(),
            ),
            BlocProvider(
              create: (context) => getit<PromtionsBloc>(),
            ),
            BlocProvider(
              create: (context) => getit<CartoperationsBloc>(),
            ),
            BlocProvider(
              create: (context) => getit<LoginBloc>(),
            ),
            BlocProvider<CounterHomeCubit>(
              create: (context) => CounterHomeCubit(),
            ),
          ],
          child: MaterialApp(
            theme: ThemeData(
                scaffoldBackgroundColor: Colors.white, fontFamily: 'Inter'),
            debugShowCheckedModeBanner: false,
            home: const LoginScreen(),
          ),
        );
      },
    );
  }
}
