import 'package:flutter/material.dart';
class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home',style: TextStyle(fontSize: 25,color: Colors.indigo),),
      ),
    );
  }
}
