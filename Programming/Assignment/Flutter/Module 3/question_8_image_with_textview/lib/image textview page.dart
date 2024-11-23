import 'package:flutter/material.dart';

class MyImage extends StatefulWidget {
  const MyImage({super.key, required String title});

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Textview'),
      ),
      
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),

            Image.asset('assets/images/dahilia.jpg', height: 150, width: 150,),
            
            Row(
              children: [
                SizedBox(width: 10,),

                Image.asset('assets/images/daisy.jpg', height: 150, width: 150,),

                SizedBox(width: 10,),

                Container(
                  child: Text('Flowers', style: TextStyle(fontSize: 30, color: Colors.black),),
                ),

                SizedBox(width: 10,),

                Image.asset('assets/images/lotus.jpeg', height: 150, width: 150,),
              ],
            ),

            Image.asset('assets/images/rose.jpg', height: 150, width: 160,),
          ],
        ),
      ),
    );
  }
}
