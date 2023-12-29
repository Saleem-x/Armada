import 'package:armada/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ArmadaApp());
}

class ArmadaApp extends StatelessWidget {
  const ArmadaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.4, 866.3),
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xFFf6f6f6),
              fontFamily: 'Inter'),
          debugShowCheckedModeBanner: false,
          home: const LoginScreen(),
        );
      },
    );
  }
}
