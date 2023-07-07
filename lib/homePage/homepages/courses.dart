import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/utility/courseName.dart';

import '../../JoinOption/options.dart';

class Courses extends StatelessWidget {
  const Courses({super.key});

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
                        'DIU CSE Courses',
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
                padding: EdgeInsets.only(top: 10.h),
                child: Column(
                  children: [
                    MainOptions('Level 1 Term 1 (L1-T1)', () {}),
                    CourseName('CSE 112', ' Computer Fundamentals', '3', () {
                      // Get.to(CourseQuestionsView());
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
