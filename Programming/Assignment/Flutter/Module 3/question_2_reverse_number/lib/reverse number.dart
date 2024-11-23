import 'package:flutter/material.dart';

class MyReverseNumber extends StatefulWidget {
  const MyReverseNumber({super.key, required String title});

  @override
  _ReverseNumberScreenState createState() => _ReverseNumberScreenState();
}

class _ReverseNumberScreenState extends State<MyReverseNumber> {

  final TextEditingController _numberController = TextEditingController();
  String? _reversedNumber;

  void _reverseNumber() {
    String input = _numberController.text;
    if (input.isEmpty || int.tryParse(input) == null) {
      setState(() {
        _reversedNumber = 'Invalid input';
      });
      return;
    }
    setState(() {
      _reversedNumber = input.split('').reversed.join();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reverse Number'),
        backgroundColor: Colors.blueAccent.shade200,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter a number to reverse:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20),

            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Number',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 40),

            ElevatedButton(
              onPressed: _reverseNumber,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                padding: const EdgeInsets.symmetric(vertical: 12.0),
              ),
              child: Text('Reverse', style: TextStyle(fontSize: 20),),
            ),

            SizedBox(height: 40),

            if (_reversedNumber != null)
              TextField(
                controller: TextEditingController(text: _reversedNumber),
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Reversed Number',
                  border: OutlineInputBorder(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
