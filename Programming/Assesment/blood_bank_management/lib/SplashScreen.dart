import 'dart:async';

import 'package:blood_bank_management/Sign%20In.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MySignIn(),));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
            child: Container(
              height: 200,
              width: 200,
              child: Image.asset('assets/animations/heartbeat.gif', height: 200, width: 200, fit: BoxFit.cover,),
            )
        ),
      ),
    );
  }
}