import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/providers/homeprovider.dart';
import 'package:hashtag_cse/utility/nodataav.dart';
import 'package:hashtag_cse/utility/question.dart';
import 'package:provider/provider.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      'DIU Question Feed',
                      style: TextStyle(
                          color: Color(0xff0B2D5B),
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            // Consumer<QueestionProvider>(builder: (context, modal, child) {
            //   return modal.categoryList.length == 0
            //       ? NodataAvailableClass('No IGN Available', 25.0.h)
            //       : ListView.builder(
            //           shrinkWrap: false,
            //           scrollDirection: Axis.horizontal,
            //           itemCount: modal.categoryList.length,
            //           itemBuilder: (context, index) {
            //             final questiondetails = modal.categoryList[index];
            //             return PersonQuestion(
            //                 'assets/images/profilepic.png', questiondetails);
            //           });
            // }),
            Column(
              children: [
                PersonQuestion('assets/images/profilepic.png', 'Istiak Jibon',
                    'Flutter center'),
                PersonQuestion(
                    'assets/images/profilepic2.png', 'Shakil', 'Flutter error'),
                PersonQuestion('assets/images/profilepic3.png', 'Nava',
                    'Accounts building'),
                PersonQuestion('assets/images/profilepic.png', 'Istiak Jibon',
                    'Flutter center'),
                PersonQuestion(
                    'assets/images/profilepic2.png', 'Shakil', 'Flutter error'),
                PersonQuestion('assets/images/profilepic3.png', 'Nava',
                    'Accounts building'),
                PersonQuestion('assets/images/profilepic.png', 'Istiak Jibon',
                    'Flutter center'),
                PersonQuestion(
                    'assets/images/profilepic2.png', 'Shakil', 'Flutter error'),
                PersonQuestion('assets/images/profilepic3.png', 'Nava',
                    'Accounts building'),
                PersonQuestion('assets/images/profilepic.png', 'Istiak Jibon',
                    'Flutter center'),
                PersonQuestion(
                    'assets/images/profilepic2.png', 'Shakil', 'Flutter error'),
                PersonQuestion('assets/images/profilepic3.png', 'Nava',
                    'Accounts building'),
              ],
            )
          ],
        ),
      )),
    );
  }
}
