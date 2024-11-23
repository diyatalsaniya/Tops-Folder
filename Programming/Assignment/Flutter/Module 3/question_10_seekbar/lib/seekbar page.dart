import 'package:flutter/material.dart';

class MySeekbarPage extends StatefulWidget {
  const MySeekbarPage({super.key, required String title});

  @override
  State<MySeekbarPage> createState() => _MySeekbarPageState();
}

class _MySeekbarPageState extends State<MySeekbarPage> {

  // Variables to hold RGB values
  double _red = 0.0;
  double _green = 0.0;
  double _blue = 0.0;

  // Function to generate the current background color
  Color _getBackgroundColor() {
    return Color.fromRGBO(
      _red.toInt(),
      _green.toInt(),
      _blue.toInt(),
      1.0, // Full opacity
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('SeekBar Color Changer')),

      body: Container(
        color: _getBackgroundColor(), // Set background color dynamically
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Adjust the sliders to change the background color',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 20),

              // Red Slider
              _buildSlider(
                label: 'Red',
                value: _red,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    _red = value;
                  });
                },
              ),

              // Green Slider
              _buildSlider(
                label: 'Green',
                value: _green,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _green = value;
                  });
                },
              ),

              // Blue Slider
              _buildSlider(
                label: 'Blue',
                value: _blue,
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    _blue = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget to create a slider with a label
  Widget _buildSlider({
    required String label,
    required double value,
    required Color activeColor,
    required ValueChanged<double> onChanged,
  })
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label: ${value.toInt()}',
          style: const TextStyle(fontSize: 16),
        ),
        Slider(
          value: value,
          min: 0.0,
          max: 255.0,
          divisions: 255,
          label: '${value.toInt()}',
          activeColor: activeColor,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
