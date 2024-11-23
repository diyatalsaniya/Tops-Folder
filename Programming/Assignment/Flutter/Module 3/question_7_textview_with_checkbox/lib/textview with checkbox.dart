import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key, required String title});

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {

  bool _isChecked = false; // Checkbox state.

  void toggleCheckbox(bool? value) {
    setState(() {
      _isChecked = value ?? false; // Update the state.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkbox Visibility')),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: toggleCheckbox,
                ),
                Text(
                  'Show Text',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),

            SizedBox(height: 20),

            if (_isChecked)
              Text(
                'Checkbox is Checked!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
