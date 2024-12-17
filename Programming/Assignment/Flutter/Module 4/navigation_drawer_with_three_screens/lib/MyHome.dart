import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MysettingsState();
}

class _MysettingsState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Home Page',style: TextStyle(fontSize: 25,color: Colors.black),),
      ),
    );
  }
}
