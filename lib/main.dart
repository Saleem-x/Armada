import 'package:armada/feature/data/di/injectable.dart';
import 'package:armada/feature/screens/login.dart';
import 'package:armada/feature/state/bloc/banners/banners_bloc.dart';
import 'package:armada/feature/state/bloc/featuredcategories/featuredcategories_bloc.dart';
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
      //designSize: const Size(411.4, 866.3),
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
