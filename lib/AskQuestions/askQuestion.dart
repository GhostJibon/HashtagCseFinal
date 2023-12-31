import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/utility/constant.dart';
import 'package:http/http.dart' as http;

class AskQuestion extends StatefulWidget {
  const AskQuestion({super.key});

  @override
  State<AskQuestion> createState() => _AskQuestionState();
}

class _AskQuestionState extends State<AskQuestion> {
  String fullQuestion = '';
  String questionTitle = '';
  int userid = 0;
  void _updatePostText(String newText) {
    setState(() {
      fullQuestion = newText;
    });
  }

  void _updateTopic(String newText) {
    setState(() {
      questionTitle = newText;
    });
  }

  void _updateUserId(String newText) {
    setState(() {
      userid = int.parse(newText);
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isloadingquestionadd = true;
    Future<void> addQuestion(
      int userid,
      String questiontitle,
      String fullquestion,
    ) async {
      try {
        isloadingquestionadd = true;
        final Map<String, dynamic> authdata = {
          "title": questiontitle,
          "content": fullquestion,
          "user": userid
        };
        print(authdata);
        var url = Uri.parse(AppConstants.BASE_URL + '/questions/');
        http.Response response =
            await http.post(url, body: json.encode(authdata), headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          // 'Authorization': 'Bearer $token',
        });
        final String res = response.body;
        print(res);
        Map<String, dynamic> mapResponse = JsonDecoder().convert(res);
        print('-------');
        print(mapResponse);
        isloadingquestionadd = false;
        // if (mapResponse['message'] == 'User logged in successfully') {
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => HomePage()));
        // } else {
        //   DialogClass.confirmDialog(context, mapResponse['message'].toString());
        // }
        // notifyListeners();
      } catch (c) {
        isloadingquestionadd = false;
        // notifyListeners();
        print(c);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 39, 70),
        title: Text(
          'Post Text',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                maxLines: 1,
                minLines: 1,
                onChanged: _updateUserId,
                decoration: InputDecoration(
                  labelText: 'Enter your user id',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                maxLines: 1,
                minLines: 1,
                onChanged: _updateTopic,
                decoration: InputDecoration(
                  labelText: 'Enter your questions topic',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                maxLines: 20,
                minLines: 1,
                onChanged: _updatePostText,
                decoration: InputDecoration(
                  labelText: 'Enter your questions',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.black),
                ),
                onPressed: () async {
                  print('Posted: $fullQuestion $questionTitle $userid');

                  await addQuestion(userid, questionTitle, fullQuestion);
                },
                child: Text('Post'),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
