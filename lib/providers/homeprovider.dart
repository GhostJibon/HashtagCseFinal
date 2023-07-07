import 'package:flutter/material.dart';
import 'package:hashtag_cse/models/feedmodel.dart';
import 'package:http/http.dart' as http;
//import 'dart:developer' as developer;
import 'dart:developer' as developer;

class CategoryProvider with ChangeNotifier {
  List<Category> _categoryList = [];
}
