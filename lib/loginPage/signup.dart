import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hashtag_cse/homePage/homepage.dart';
import 'package:hashtag_cse/providers/auth.dart';
import 'package:hashtag_cse/providers/dialog.dart';
import 'package:hashtag_cse/utility/constant.dart';
import 'package:hashtag_cse/utility/textfield.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String userName = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    // final authProvider = Provider.of<AuthProvider>(context, listen: false);

    bool isloadingsign = true;
    Future<void> login(
      String username,
      String password,
    ) async {
      try {
        isloadingsign = true;
        final Map<String, dynamic> authdata = {
          "username": username,
          "password": password
        };
        print(authdata);
        var url = Uri.parse(AppConstants.BASE_URL + '/register/');
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
        isloadingsign = false;
        if (mapResponse['message'] == 'User registered successfully') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        } else {
          DialogClass.confirmDialog(context, mapResponse['message'].toString());
        }
        // notifyListeners();
      } catch (c) {
        isloadingsign = false;
        // notifyListeners();
        print(c);
      }
    }

    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 28.sp,
                  color: Colors.black,
                ),
              ),
              Text(
                'Registration Informations',
                style: TextStyle(
                    color: Color(0xff0B2D5B),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 180.h),
            child: Column(
              children: [
                Container(
                  height: 35.h,
                  width: 280.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: Color(0xff555555),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintStyle: TextStyle(color: Color(0xff555555)),
                      hintText: "Username",
                      contentPadding: EdgeInsets.only(top: 0.h),
                    ),
                    onChanged: (text) {
                      setState(() {
                        userName = text;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 35.h,
                  width: 280.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      prefixIconColor: Color(0xff555555),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintStyle: TextStyle(color: Color(0xff555555)),
                      hintText: "Password",
                      contentPadding: EdgeInsets.only(top: 0.h),
                    ),
                    onChanged: (text2) {
                      setState(() {
                        password = text2;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.h),
                  child: GestureDetector(
                    onTap: () async {
                      await login(userName, password);
                    },
                    child: Container(
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 17.sp),
                      )),
                      height: 35.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
