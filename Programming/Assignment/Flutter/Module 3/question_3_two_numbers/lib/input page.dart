import 'package:flutter/material.dart';
import 'package:question_3_two_numbers/display%20page.dart';

class MyInputPage extends StatefulWidget {
  const MyInputPage({super.key, required String title});

  @override
  State<MyInputPage> createState() => _MyInputPageState();
}

class _MyInputPageState extends State<MyInputPage> {

  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  void navigateToDisplayScreen() {
    if (num1Controller.text.isNotEmpty && num2Controller.text.isNotEmpty) {
      final int num1 = int.parse(num1Controller.text);
      final int num2 = int.parse(num2Controller.text);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyDisplayPage(start: num1, end: num2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter valid numbers')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Numbers')),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter First Number',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 16),

            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Second Number',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: navigateToDisplayScreen,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Show Range', style: TextStyle(fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
