import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.red.shade200,
      ),
      
      body: Center(
        child: Text('Welcome To our app', style: TextStyle(fontSize: 30, color: Colors.blue.shade700),),
      ),
    );
  }
}
