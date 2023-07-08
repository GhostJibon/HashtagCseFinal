import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/utility/viewquestion.dart';
import 'package:like_button/like_button.dart';

class PersonQuestion extends StatefulWidget {
  PersonQuestion(this.personProfilePic, this.name, this.asked);

  final String personProfilePic;
  final String name;
  final String asked;
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
                  builder: (context) =>
                      DirectReply(widget.asked, widget.personProfilePic)));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 55.h,
                  width: 55.h,
                  child: Stack(
                    children: [
                      Container(
                        height: 50.h,
                        width: 50.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.h),
                          image: DecorationImage(
                            image: AssetImage(widget.personProfilePic),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
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
                    Text(
                      'Asked about: ' + widget.asked,
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
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
