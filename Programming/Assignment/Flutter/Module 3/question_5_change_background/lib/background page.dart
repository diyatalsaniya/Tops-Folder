import 'package:flutter/material.dart';
import 'dart:math';

class MyBackground extends StatefulWidget {
  const MyBackground({super.key, required String title});

  @override
  State<MyBackground> createState() => _MyBackgroundState();
}

class _MyBackgroundState extends State<MyBackground> {

  Color backgroundColor = Color.fromARGB(255, 225, 60, 184); // Default background color.

  void changeBackgroundColor() {
    setState(() {
      // Generate a random color.
      backgroundColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        color: backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: changeBackgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Change Background', style: TextStyle(fontSize: 20, color: Colors.black),),
            ),
          ),
        ),
      ),
    );
  }
}
