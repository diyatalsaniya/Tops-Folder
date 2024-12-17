import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MysettingsState();
}

class _MysettingsState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Accounts',style: TextStyle(fontSize: 25,color: Colors.black),),
      ),
    );
  }
}
