import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

import 'package:hashtag_cse/utility/addAnswers.dart';

class Answer extends StatelessWidget {
  Answer(this.commenterProfilePic, this.commenterName, this.commentText,
      this.commentTime);
  final String commenterProfilePic;
  final String commenterName;
  final String commentText;
  final String commentTime;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, top: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Container(
              height: 35.h,
              width: 35.h,
              decoration: BoxDecoration(
                  color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  commenterName.substring(0, 1),
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 260.w,
                decoration: BoxDecoration(
                    color: Color(0xffDDDDDD),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 7.w, top: 5.h, bottom: 5.h, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.h),
                        child: Text(
                          commenterName,
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: Text(
                          commentText,
                          style: TextStyle(fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // AddAnswer(profilepic)
              // Container(
              //   width: 180.w,
              //   child: Padding(
              //     padding: EdgeInsets.only(top: 3.h, left: 10.w, right: 10.w),
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Text(
              //           commentTime,
              //           style: TextStyle(
              //               fontSize: 13.sp, color: Color(0xff555555)),
              //         ),
              //         Text(
              //           'Valid',
              //           style: TextStyle(
              //               fontSize: 13.sp, color: Color(0xff555555)),
              //         ),
              //         Text(
              //           'UnValid',
              //           style: TextStyle(
              //               fontSize: 13.sp, color: Color(0xff555555)),
              //         ),
              //         Text(
              //           'Reply',
              //           style: TextStyle(
              //               fontSize: 13.sp, color: Color(0xff555555)),
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ],
      ),
    );
  }
}
