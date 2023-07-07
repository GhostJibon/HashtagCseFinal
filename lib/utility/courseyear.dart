import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainOptions extends StatelessWidget {
  MainOptions(this.buttonname, this.ontap);
  final String buttonname;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: 35.h,
          width: 300.w,
          decoration: BoxDecoration(
              color: Color(0xff0B2D5B),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                ),
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              buttonname,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
