import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TFF extends StatelessWidget {
  TFF(this.hinttext, this.preicon);
  final String hinttext;
  final Widget preicon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Container(
        height: 35.h,
        width: 280.w,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: preicon,
            prefixIconColor: Color(0xff555555),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintStyle: TextStyle(color: Color(0xff555555)),
            hintText: hinttext,
            contentPadding: EdgeInsets.only(top: 0.h),
          ),
        ),
      ),
    );
  }
}
