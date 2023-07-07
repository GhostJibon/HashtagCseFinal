import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/utility/addAnswers.dart';
import 'package:hashtag_cse/utility/answers.dart';
import 'package:like_button/like_button.dart';

class DirectReply extends StatelessWidget {
  DirectReply(this.personname, this.profilepic);
  final String personname;
  final String profilepic;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 20.w, top: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                        color: Color(0xff0584FE),
                      ),
                    ),
                    GestureDetector(
                      // onTap: () {
                      //   Get.to(MProfile(
                      //       profilepic,
                      //       personname,
                      //       'Shakh Istiak Hossain Jibon',
                      //       '3rd',
                      //       '52',
                      //       'CSE',
                      //       '191-15-12640',
                      //       'Panchagarh',
                      //       '01761067657'));
                      // },
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10.w),
                            child: Container(
                              height: 35.h,
                              width: 35.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.h),
                                image: DecorationImage(
                                  image: AssetImage(profilepic),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                personname,
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'DIU Student Question',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Icon(Icons.info)),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: 10.w, right: 10.w, top: 15.h, bottom: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'I cant center a text file inside a row in flutter any idea what should i do? ',
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5.h, bottom: 20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LikeButton(
                      circleColor: CircleColor(
                          start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                    ),
                    Icon(
                      Icons.comment,
                      color: Colors.grey,
                    ),
                    Text(
                      '23' + ' Comments',
                    )
                  ],
                ),
              ),
              PeoplesAnswer(
                  'assets/images/profilepic.png',
                  'Istiak Hossain',
                  'Try using the Center widget or Use mainaxix alignment center',
                  '1h'),
              AddAnswer('assets/images/profilepic.png'),
            ],
          ),
        ),
      ),
    );
  }
}
