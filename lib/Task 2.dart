import 'package:flutter/material.dart';

class MyTask2 extends StatelessWidget {
  const MyTask2({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset('assets/images/a1.jpeg'),
          ),
          
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 30, right: 20),
                child: Text('Oeschinen Lake Campground', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
            ],
          ),

          Row(
            children: [
              SizedBox(width: 40),
              Text('Kandersteg, Switgerlend'),
              SizedBox(width: 160),
              Icon(Icons.star, color: Colors.red),
              Text('41', style: TextStyle(fontSize: 18),)
            ],
          ),
          
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(height: 80,),
              ),
              SizedBox(width: 40,),
              Icon(Icons.phone, color: Colors.blue, size: 30,),
              SizedBox(width: 100,),
              Icon(Icons.send_rounded, color: Colors.blue, size: 30,),
              SizedBox(width: 100,),
              Icon(Icons.share, color: Colors.blue, size: 30,)
            ],
          ),
          
          
          Row(
            children: [
              SizedBox(width: 80,),
              Text('CALL', style: TextStyle(color: Colors.blue, fontSize: 18),),
              SizedBox(width: 70,),
              Text('ROUTE', style: TextStyle(color: Colors.blue, fontSize: 18),),
              SizedBox(width: 80,),
              Text('SHARE', style: TextStyle(color: Colors.blue, fontSize: 18),)
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              child: Text('Lake Oeschinen lies at the foot of the Bauernfisalp in the Betneso Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondoia ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.'),
            ),
          )
          
          
          
        ],
      )
    );
  }
}
