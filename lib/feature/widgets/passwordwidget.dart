import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordFieldWithVisibilityToggle extends StatefulWidget {
  @override
  _PasswordFieldWithVisibilityToggleState createState() =>
      _PasswordFieldWithVisibilityToggleState();
}

class _PasswordFieldWithVisibilityToggleState
    extends State<PasswordFieldWithVisibilityToggle> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(
          fontSize: 19.sp,
          fontWeight: FontWeight.w400,
          color: const Color.fromARGB(255, 124, 124, 124),
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}
