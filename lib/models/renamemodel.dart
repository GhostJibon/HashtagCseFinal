import 'package:flutter/material.dart';

class Questions {
  String? name;
  String? question;
  String? asked;
  String? answer;

  Questions({
    @required this.question,
    @required this.answer,
    @required this.asked,
    @required this.name,
  });

  factory Questions.fromJson(Map<String, dynamic> map) {
    return Questions(
      name: map[''],
      question: map[''],
      answer: map[''],
      asked: map[''],
    );
  }
}
