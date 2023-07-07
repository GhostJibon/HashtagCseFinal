import 'package:flutter/material.dart';
import 'package:hashtag_cse/models/renamemodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//import 'dart:developer' as developer;
import 'dart:developer' as developer;

class QueestionProvider with ChangeNotifier {
  List<Questions> _categoryList = [];
  List<Questions> get categoryList => _categoryList;
  Future getQuestions() async {
    var url = Uri.parse('');
    http.Response response = await http.get(url);
    List<Questions> _personlist = [];
    Map<String, dynamic> responseData =
        jsonDecode((utf8.decode(response.bodyBytes)));
    responseData['results'].forEach((dynamic data) {
      final Questions _person = Questions.fromJson(data);
      print('mmmmmmmmmmmamamamammmamamamamaaamamammam');
      print(_person.name);
      _personlist.add(_person);
    });
    _categoryList = _personlist;

    notifyListeners();
  }
}
