import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/ActivePerson/actives.dart';
import 'package:hashtag_cse/AskQuestions/askQuestion.dart';
import 'package:hashtag_cse/homePage/homepages/courses.dart';
import 'package:hashtag_cse/homePage/homepages/feed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
            children: [Feed(), Courses(), ActivePersons(), AskQuestion()]),
        bottomNavigationBar: TabBar(
          indicatorColor: Color(0xffFF5757),
          unselectedLabelColor: Colors.black,
          labelColor: Color(0xff384CFF),
          tabs: [
            Tab(
                icon: Text(
              'NewsFeed',
              style: TextStyle(
                  color: Color(0xffFF5757),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w800),
            )),
            Tab(
                icon: Text(
              'Courses',
              style: TextStyle(
                  color: Color(0xffFF5757),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w800),
            )),
            Tab(
                icon: Text(
              'Active',
              style: TextStyle(
                  color: Color(0xffFF5757),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w800),
            )),
            Tab(
                icon: Text(
              'Ask',
              style: TextStyle(
                  color: Color(0xffFF5757),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w800),
            )),
          ],
        ),
      ),
    );
  }
}
