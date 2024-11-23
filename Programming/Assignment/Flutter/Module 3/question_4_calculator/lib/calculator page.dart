import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key, required String title});

  @override
  State<MyCalculator> createState() => _MyNumberPageState();
}

class _MyNumberPageState extends State<MyCalculator> {

  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  String? selectedOperation = 'Add'; // Default operation
  String result = '';

  void calculateResult() {
    if (num1Controller.text.isEmpty || num2Controller.text.isEmpty) {
      setState(() {
        result = 'Please enter both numbers.';
      });
      return;
    }

    final double num1 = double.tryParse(num1Controller.text) ?? 0.0;
    final double num2 = double.tryParse(num2Controller.text) ?? 0.0;

    setState(() {
      if(selectedOperation == 'Add') {
        result = 'Result: ${num1 + num2}';
      }
      else if(selectedOperation == 'Subtract') {
        result = 'Result: ${num1 - num2}';
      }
      else if(selectedOperation == 'Multiply') {
        result = 'Result: ${num1 * num2}';
      }
      else if(selectedOperation == 'Divide') {
        if (num2 != 0) {
          result = 'Result: ${num1 / num2}';
        } else {
          result = 'Division by zero is not allowed.';
        }
      }
      else {
        result: 'Invalid Choice';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arithmetic Operations', style: TextStyle(fontSize: 25),)),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter First Number',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 16),

            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter Second Number',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            Text(
              'Select Operation:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            Column(
              children: [
                RadioListTile<String>(
                  title: Text('Add'),
                  value: 'Add',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value;
                    });
                  },
                ),

                RadioListTile<String>(
                  title: Text('Subtract'),
                  value: 'Subtract',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value;
                    });
                  },
                ),

                RadioListTile<String>(
                  title: Text('Multiply'),
                  value: 'Multiply',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value;
                    });
                  },
                ),

                RadioListTile<String>(
                  title: Text('Divide'),
                  value: 'Divide',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value;
                    });
                  },
                ),
              ],
            ),

            SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                onPressed: calculateResult,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Calculate', style: TextStyle(fontSize: 20),),
                ),
              ),
            ),

            SizedBox(height: 20),

            Center(
              child: Text(
                result,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
