import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/utility/textfield.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: 28.sp,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Signup Informations',
                  style: TextStyle(
                      color: Color(0xff0B2D5B),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 180.h),
              child: Column(
                children: [
                  TFF('First Name', Icon(Icons.person)),
                  TFF('Last Name', Icon(Icons.people)),
                  TFF('Id', Icon(Icons.add_card)),
                  TFF('Email', Icon(Icons.email)),
                  TFF('Password', Icon(Icons.password)),
                  TFF('Confirm Password', Icon(Icons.password)),
                  Padding(
                    padding: EdgeInsets.only(top: 25.h),
                    child: Container(
                      child: Center(
                          child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 17.sp),
                      )),
                      height: 35.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
