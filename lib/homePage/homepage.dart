import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/ActivePerson/actives.dart';
import 'package:hashtag_cse/AskQuestions/askQuestion.dart';
import 'package:hashtag_cse/homePage/homepages/courses.dart';
import 'package:hashtag_cse/homePage/homepages/feed.dart';
import 'package:hashtag_cse/models/questionmodel.dart';
import 'package:hashtag_cse/providers/homeprovider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Future<dynamic> exitDialog() {
    // exit dialog
    return showDialog(
      barrierColor: Colors.white54,
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[50],
        title: Text('Are You Sure ?',
            style: TextStyle(
              color: Colors.red,
            )),
        content: Text('Do you want to exit from the App ',
            style: TextStyle(
              color: Colors.black,
            )),
        actions: [
          TextButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            child: Text('Exit',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                )),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text('Cancel',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // QueestionProvider queestionProvider =
    //     Provider.of<QueestionProvider>(context, listen: false);
    // queestionProvider.getQuestions();
    return WillPopScope(
      onWillPop: () async {
        exitDialog();
        return Future.value(false);
      },
      child: DefaultTabController(
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
      ),
    );
  }
}
