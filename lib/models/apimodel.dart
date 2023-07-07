import 'package:flutter/material.dart';

class ApiModel {
  String? email;
  String? name;
  String? password;
  ApiModel(
      {@required this.email, @required this.password, @required this.name});

  factory ApiModel.fromJson(Map<String, dynamic> map) {
    return ApiModel(
      email: map[''],
      password: map[''],
      name: map[''],
    );
  }
}
