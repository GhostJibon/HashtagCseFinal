import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/models/replymodel.dart';
import 'package:hashtag_cse/providers/homeprovider.dart';
import 'package:hashtag_cse/utility/addAnswers.dart';
import 'package:hashtag_cse/utility/answers.dart';
import 'package:hashtag_cse/utility/nodataav.dart';
import 'package:hashtag_cse/utility/shimmer.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

class DirectReply extends StatefulWidget {
  DirectReply(
    this.personname,
    this.profilepic,
    this.questionId,
    this.asked,
    this.fullQuestion,
  );
  final String personname;
  final String profilepic;
  final String fullQuestion;
  final int questionId;
  final String asked;

  @override
  State<DirectReply> createState() => _DirectReplyState();
}

class _DirectReplyState extends State<DirectReply> {
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    QuestionProvider questionProvider =
        Provider.of<QuestionProvider>(context, listen: false);
    await questionProvider.getReplies(widget.questionId);
  }

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
                                  color: Color((math.Random().nextDouble() *
                                              0xFFFFFF)
                                          .toInt())
                                      .withOpacity(1.0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  widget.personname.substring(0, 1),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.personname,
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                widget.asked,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  widget.fullQuestion,
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
              SizedBox(height: 15.0),
              Consumer<QuestionProvider>(
                  child: BookCartShimmer(),
                  builder: (context, modal, child) {
                    return modal.isLoadingQuesionsInfo
                        ? child as Widget
                        : modal.replies.length == 0
                            ? NodataAvailableClass(
                                'No Questions Available', 25.0.h)
                            : SizedBox(
                                width: double.maxFinite,
                                child: ListView.builder(
                                    // physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: modal.replies.length,
                                    itemBuilder: (context, index) {
                                      final Replies repldetails =
                                          modal.replies[index];
                                      return Answer(
                                          'assets/images/profilepic.png',
                                          repldetails.name,
                                          repldetails.answer,
                                          '1h');
                                    }),
                              );
                  }),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AddAnswer(),
                  SizedBox(height: 5.0),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.black),
                    ),
                    onPressed: () {
                      // print('Posted: $postQuestion');
                    },
                    child: Text('Post'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
