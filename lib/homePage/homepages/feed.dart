import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/models/questionmodel.dart';
import 'package:hashtag_cse/providers/homeprovider.dart';
import 'package:hashtag_cse/utility/nodataav.dart';
import 'package:hashtag_cse/utility/question.dart';
import 'package:hashtag_cse/utility/shimmer.dart';
import 'package:hashtag_cse/utility/viewquestion.dart';
import 'package:provider/provider.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    QuestionProvider questionProvider =
        Provider.of<QuestionProvider>(context, listen: false);
    await questionProvider.getQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SafeArea(
          child: Container(
        height: double.maxFinite,
        child: Consumer<QuestionProvider>(
            child: BookCartShimmer(),
            builder: (context, modal, child) {
              return modal.isLoadingQuesionsInfo
                  ? child as Widget
                  : modal.questions.length == 0
                      ? NodataAvailableClass('No Questions Available', 25.0.h)
                      : SizedBox(
                          height: double.maxFinite,
                          width: double.maxFinite,
                          child: ListView.builder(
                              // physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: modal.questions.length,
                              itemBuilder: (context, index) {
                                final Questions questiondetails =
                                    modal.questions[index];
                                return PersonQuestion(
                                  'assets/images/profilepic.png',
                                  questiondetails.name,
                                  questiondetails.title,
                                  questiondetails.id,
                                  questiondetails.question,
                                );
                              }),
                        );
            }),
      )),
    );
  }
}
