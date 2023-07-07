import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/utility/onlineperson.dart';

class ActivePersons extends StatefulWidget {
  const ActivePersons({super.key});

  @override
  State<ActivePersons> createState() => _ActivePersonsState();
}

class _ActivePersonsState extends State<ActivePersons> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 32.sp,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: Text(
                      'DIU Active Students',
                      style: TextStyle(
                          color: Color(0xff0B2D5B),
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.w, top: 20.w),
              child: Column(
                children: [
                  OnlinePerson('assets/images/profilepic.png', 'Istiak Jibon'),
                  OnlinePerson('assets/images/profilepic2.png', 'Shakil'),
                  OnlinePerson('assets/images/profilepic3.png', 'Nava'),
                  OnlinePerson('assets/images/profilepic.png', 'Istiak Jibon'),
                  OnlinePerson('assets/images/profilepic2.png', 'Shakil'),
                  OnlinePerson('assets/images/profilepic3.png', 'Nava'),
                  OnlinePerson('assets/images/profilepic.png', 'Istiak Jibon'),
                  OnlinePerson('assets/images/profilepic2.png', 'Shakil'),
                  OnlinePerson('assets/images/profilepic3.png', 'Nava'),
                  OnlinePerson('assets/images/profilepic.png', 'Istiak Jibon'),
                  OnlinePerson('assets/images/profilepic2.png', 'Shakil'),
                  OnlinePerson('assets/images/profilepic3.png', 'Nava'),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
