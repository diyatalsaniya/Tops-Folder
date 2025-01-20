import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/HomePage.dart';
import 'package:flutter_firebase/Login%20Page.dart';


class CheckAuth extends StatelessWidget {
  const CheckAuth({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return HomePage();
          }
          else{
            return LoginPage();
          }
        },),
    );
  }
}