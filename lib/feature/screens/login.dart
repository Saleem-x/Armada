import 'dart:convert';
import 'dart:developer';

import 'package:armada/feature/screens/dailyverification.dart';
import 'package:armada/feature/state/bloc/login/login_bloc.dart';
import 'package:armada/feature/widgets/passwordwidget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:armada/feature/screens/forgotpassword.dart';
import 'package:armada/feature/screens/verifyaccount.dart';

import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.when(
            loginedUser: (user) {
              if (user != null) {
                log(jsonEncode(user));
                if (user.title == 'Failure' || user.userId == '') {
                  /* showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(user.title),
                      content: Text(user.descr),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Ok'))
                      ],
                    ),
                  ); */
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: Text(user.title),
                      content: Text(user.descr),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Ok'),
                        ),
                      ],
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DailyVerfScreen(),
                    ),
                  );
                }
              }
            },
            loginFailedState: () {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: const Text('Failure'),
                  content: const Text('Something went wrong'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Ok'),
                    ),
                  ],
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    SizedBox(height: 80.h),
                    SvgPicture.asset('assets/svg/logo.svg'),
                    SizedBox(height: 40.h),
                    Container(
                      width: double.infinity,
                      //height: 184.h,
                      child: SvgPicture.asset(
                        'assets/svg/login_art.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF6f3d1e),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 8.h),
                                  child: SvgPicture.asset(
                                      'assets/svg/username.svg'),
                                ),
                                SizedBox(width: 20.w),
                                Expanded(
                                    child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter username';
                                    } else if (!EmailValidator.validate(
                                        value)) {
                                      return 'Enter valid email';
                                    }
                                    return null;
                                  },
                                  controller: userNameController,
                                  decoration: InputDecoration(
                                    hintText: 'Email or Userame',
                                    hintStyle: TextStyle(
                                        fontSize: 19.sp,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromARGB(
                                            255, 124, 124, 124)),
                                  ),
                                ))
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 8.h),
                                  child: SvgPicture.asset(
                                    'assets/svg/password.svg',
                                  ),
                                ),
                                SizedBox(width: 20.w),
                                Expanded(
                                  child: PasswordFieldWithVisibilityToggle(
                                      controller: passwordController),
                                )
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  child: Text('Forgot Password ?',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: const Color.fromARGB(
                                              244, 175, 25, 30),
                                          fontWeight: FontWeight.w500)),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PasswordScreen()));
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 15.h),
                            MaterialButton(
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DailyVerfScreen()));
                                /*  if (formkey.currentState!.validate()) {
                                  // await LoginUserRepo().loginUserRepo(
                                  //     userNameController.text,
                                  //     passwordController.text);
                                  context.read<LoginBloc>().add(UserLoginEvent(
                                      username: userNameController.text,
                                      password: passwordController.text));
                                } */
                              },
                              color: const Color.fromARGB(244, 202, 29, 35),
                              height: 35.h,
                              minWidth: 500.w,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Yet to verify account?  ',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          child: Text('Verify',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromARGB(244, 175, 25, 30))),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const VerifyScreen()));
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 28.h),
                    Text(
                      'Powered by',
                      style: TextStyle(
                          fontSize: 6.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                        height: 22.h,
                        width: 52.w,
                        child: SvgPicture.asset(
                          'assets/svg/Path 838.svg',
                          fit: BoxFit.fill,
                        ))
                  ],
                ),
              ),
            ),
          );
        },
      )),
    );
  }
}
