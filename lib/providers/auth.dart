import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hashtag_cse/utility/constant.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  bool isloadingsign = false;

  // Future<void> login(
  //   String username,
  //   String password,
  // ) async {
  //   try {
  //     isloadingsign = true;
  //     final Map<String, dynamic> authdata = {
  //       "username": username,
  //       "password": password
  //     };
  //     print(authdata);
  //     var url = Uri.parse(AppConstants.BASE_URL + '/login/');
  //     http.Response response =
  //         await http.post(url, body: json.encode(authdata), headers: {
  //       'Content-Type': 'application/json',
  //       'Accept': 'application/json',
  //       // 'Authorization': 'Bearer $token',
  //     });
  //     final String res = response.body;
  //     print(res);
  //     Map<String, dynamic> mapResponse = JsonDecoder().convert(res);
  //     print('-------');
  //     print(mapResponse);
  //     isloadingsign = false;
  //     //     if (authentication['success']) {
  //     //   Navigator.push(
  //     //       context, MaterialPageRoute(builder: (context) => Dashboard()));
  //     // } else {
  //     //   DialogClass.confirmDialog(context, authentication['message']);
  //     // }
  //     notifyListeners();
  //   } catch (c) {
  //     isloadingsign = false;
  //     notifyListeners();
  //     print(c);
  //   }
  // }
}
