import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hashtag_cse/JoinOption/joinoption.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate some initialization tasks if needed
    _loadSplashData();
  }

  void _loadSplashData() async {
    // Simulate a delay for demonstration purposes
    await Future.delayed(Duration(seconds: 2));

    // Navigate to the main screen or another screen after the splash screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => JoinOptions()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffdfdfdf),
        body: Image.asset(
          'assets/images/logo.png',
        ));
  }
}
