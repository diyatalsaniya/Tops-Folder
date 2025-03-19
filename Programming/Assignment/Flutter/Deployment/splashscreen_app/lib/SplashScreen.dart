import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen_app/Home%20Page.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key, required String title});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: '',),));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightBlue.shade100,
        child: Center(
            child: Image.asset('assets/images/girl_icon.png'),),
      ),
    );
  }
}
