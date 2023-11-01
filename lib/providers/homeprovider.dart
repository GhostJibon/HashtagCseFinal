import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hashtag_cse/models/questionmodel.dart';
import 'package:hashtag_cse/models/replymodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//import 'dart:developer' as developer;
import 'dart:developer' as developer;

class QuestionProvider with ChangeNotifier {
  List<Questions> _questionList = [];
  List<Questions> get questions => _questionList;
  List<Replies> _replyList = [];
  List<Replies> get replies => _replyList;

  bool isLoadingQuesionsInfo = true;
  bool isLoadingAnswerInfo = true;

  Future<dynamic> getQuestions() async {
    isLoadingQuesionsInfo = true;
    try {
      var url =
          Uri.parse('https://e87e-103-106-239-250.ngrok-free.app/questions');
      http.Response response = await http.get(url, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      });
      print(response.body);
      print('________________________okk_______________________');

      List<Questions> _questionlistTemp = [];
      List responseData = jsonDecode((utf8.decode(response.bodyBytes)));
      print('SSSSSSSOOOOOOOOOOOOOOOOOOOO___________');

      print(responseData);
      // final Questions _person = Questions[
      for (int i = 0; i < responseData.length; i++) {
        final Questions _person = Questions.fromJson(responseData[i]);
        _questionlistTemp.add(_person);
      }
      // ];
      // responseData[''].forEach((dynamic data) {

      print(
          'mmmmmmmmmmmamamamammmamamamamaaamamammam${_questionlistTemp.length}');
      // print(_person.name);
      // _questionlistTemp.add(_person);
      // });
      _questionList = _questionlistTemp;
      isLoadingQuesionsInfo = false;
      notifyListeners();
      print(
          'mmmmmmmmmmmamamamammmamamamamaaamamammam${_questionlistTemp.length}');
    } catch (error) {
      isLoadingQuesionsInfo = false;
      notifyListeners();
    }
  }

  Future<dynamic> getReplies(int questionId) async {
    isLoadingAnswerInfo = true;
    try {
      var url = Uri.parse(
          'https://e87e-103-106-239-250.ngrok-free.app/questions/${questionId}');
      http.Response response = await http.get(url, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      });
      List<Replies> _replyTempList = [];
      Map<String, dynamic> mapResponse =
          jsonDecode((utf8.decode(response.bodyBytes)));
      print(mapResponse);
      mapResponse['reply'].forEach((dynamic data) {
        final Replies _reply = Replies.fromJson(data);
        print('cjcjcjcjjcjjccjcjcccjjccjcjcjcjcjcjcjcjcj');

        print(_reply);
        _replyTempList.add(_reply);
        _replyList = _replyTempList;
      });

      isLoadingAnswerInfo = false;
      notifyListeners();
    } catch (error) {
      isLoadingAnswerInfo = false;
      notifyListeners();
    }
  }
}
