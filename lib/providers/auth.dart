import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hashtag_cse/models/apimodel.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  List<ApiModel> _person = [];

  Future getuser() async {
    var url = Uri.parse('');
    http.Response response = await http.get(url);
    List<ApiModel> _personlist = [];
    Map<String, dynamic> responseData =
        jsonDecode((utf8.decode(response.bodyBytes)));
    responseData['results'].forEach((dynamic data) {
      final ApiModel _person = ApiModel.fromJson(data);
      print('mmmmmmmmmmmamamamammmamamamamaaamamammam');
      print(_person.email);
      _personlist.add(_person);
    });
    _person = _personlist;

    notifyListeners();
  }
}
