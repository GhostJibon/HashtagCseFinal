import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/utility/viewquestion.dart';
import 'package:like_button/like_button.dart';
import 'dart:math' as math;

class PersonQuestion extends StatefulWidget {
  PersonQuestion(this.personProfilePic, this.name, this.asked, this.questionId,
      this.fullQuestions);

  final String personProfilePic;
  final String name;
  final String asked;
  final int questionId;
  final String fullQuestions;
  //  PersonQuestion(this.personProfilePic, this.questiondetails);
  // final questiondetails;
  // final String personProfilePic;

  @override
  State<PersonQuestion> createState() => _PersonQuestionState();
}

class _PersonQuestionState extends State<PersonQuestion> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 5.h, bottom: 5.h, right: 20.w),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DirectReply(
                      widget.name,
                      widget.personProfilePic,
                      widget.questionId,
                      widget.asked,
                      widget.fullQuestions)));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: Container(
                    height: 55.h,
                    width: 55.h,
                    decoration: BoxDecoration(
                        color: Color(
                                (math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        widget.name.substring(0, 1),
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.h),
                      child: Text(
                        widget.name,
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              'Asked about: ',
                              style: TextStyle(
                                  fontSize: 15.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              widget.asked,
                              style: TextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            LikeButton(
              circleColor:
                  CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Color(0xff33b5e5),
                dotSecondaryColor: Color(0xff0099cc),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
