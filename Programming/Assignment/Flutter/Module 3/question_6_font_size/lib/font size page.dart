import 'package:flutter/material.dart';

class MyFontSize extends StatefulWidget {
  const MyFontSize({super.key, required title});

  @override
  State<MyFontSize> createState() => _MyFontSizeState();
}

class _MyFontSizeState extends State<MyFontSize> {

  double fontSize = 16.0; // Initial font size.

  void increaseFontSize() {
    setState(() {
      fontSize += 2.0; // Increase font size by 2.
    });
  }

  void decreaseFontSize() {
    setState(() {
      if (fontSize > 8.0) { // Prevent font size from becoming too small.
        fontSize -= 2.0; // Decrease font size by 2.
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Font Size Adjuster', style: TextStyle(fontSize: 25),)),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Adjustable Font Size',
              style: TextStyle(fontSize: fontSize),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: decreaseFontSize,
                  child: Text('-', style: TextStyle(fontSize: 25, color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade300,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),

                SizedBox(width: 20),

                ElevatedButton(
                  onPressed: increaseFontSize,
                  child: Text('+', style: TextStyle(fontSize: 25, color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade300,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
