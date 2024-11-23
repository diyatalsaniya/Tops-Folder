import 'package:flutter/material.dart';

class MyColorChangerScreen extends StatefulWidget {
  const MyColorChangerScreen({super.key, required String title});

  @override
  State<MyColorChangerScreen> createState() => _MyColorChangerScreenState();
}

class _MyColorChangerScreenState extends State<MyColorChangerScreen> {

  // Variable to store the selected color
  Color _bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Select a Background Color')
      ),

      body: Container(
        color: _bgColor, // Set the background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose a Color:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

              SizedBox(height: 20),

              // Radio Buttons for Colors
              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: RadioListTile<Color>(
                  title: Text('Purple'),
                  value: Colors.purple.shade300,
                  groupValue: _bgColor,
                  onChanged: (Color? value) {
                    setState(() {
                      _bgColor = value ?? Colors.purple.shade300;
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: RadioListTile<Color>(
                  title: Text('Orange'),
                  value: Colors.orange,
                  groupValue: _bgColor,
                  onChanged: (Color? value) {
                    setState(() {
                      _bgColor = value ?? Colors.orange;
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: RadioListTile<Color>(
                  title: Text('Blue'),
                  value: Colors.blueAccent,
                  groupValue: _bgColor,
                  onChanged: (Color? value) {
                    setState(() {
                      _bgColor = value ?? Colors.blueAccent;
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: RadioListTile<Color>(
                  title: Text('Red'),
                  value: Colors.red,
                  groupValue: _bgColor,
                  onChanged: (Color? value) {
                    setState(() {
                      _bgColor = value ?? Colors.red;
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: RadioListTile<Color>(
                  title: Text('Green'),
                  value: Colors.green.shade400,
                  groupValue: _bgColor,
                  onChanged: (Color? value) {
                    setState(() {
                      _bgColor = value ?? Colors.green.shade400;
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: RadioListTile<Color>(
                  title: Text('Yellow'),
                  value: Colors.yellow,
                  groupValue: _bgColor,
                  onChanged: (Color? value) {
                    setState(() {
                      _bgColor = value ?? Colors.yellow;
                    });
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: RadioListTile<Color>(
                  title: Text('Pink'),
                  value: Colors.pinkAccent,
                  groupValue: _bgColor,
                  onChanged: (Color? value) {
                    setState(() {
                      _bgColor = value ?? Colors.pinkAccent;
                    });
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
