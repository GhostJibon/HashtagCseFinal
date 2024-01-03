import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/JoinOption/options.dart';
import 'package:hashtag_cse/homePage/homepage.dart';
import 'package:hashtag_cse/loginPage/login.dart';
import 'package:hashtag_cse/loginPage/signup.dart';

class JoinOptions extends StatefulWidget {
  const JoinOptions({super.key});

  @override
  State<JoinOptions> createState() => _JoinOptionsState();
}

class _JoinOptionsState extends State<JoinOptions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: Text(
                  'Login Options',
                  style: TextStyle(
                      color: Color(0xff0B2D5B),
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600),
                ),
              ),
              MainOptions('Login', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              }),
              // MainOptions('Admin Login', () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => LoginPage()));
              // }),
              MainOptions('Guest', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
              Padding(
                padding: EdgeInsets.only(top: 25.h),
                child: MainOptions('Create an Account', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
