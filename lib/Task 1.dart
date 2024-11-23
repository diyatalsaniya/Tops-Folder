import 'package:flutter/material.dart';

class MyTask1 extends StatelessWidget {
  const MyTask1({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('My Task 1'),
      //   backgroundColor: Colors.purple.shade200,
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 40, right: 10, bottom: 10),
              child: Container(
                height: 220,
                width: 430,
                color: Colors.red,
              ),
            ),

            Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Container(
                      height: 200,
                      width: 205,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: Container(
                      height: 200,
                      width: 210,
                      color: Colors.blue,
                    ),
                  )
                ],
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    height: 200,
                    width: 205,
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Container(
                    height: 200,
                    width: 210,
                    color: Colors.blue,
                  ),
                )
              ],
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    height: 120,
                    width: 135,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Container(
                    height: 120,
                    width: 135,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Container(
                    height: 120,
                    width: 135,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    height: 120,
                    width: 135,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Container(
                    height: 120,
                    width: 135,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Container(
                    height: 120,
                    width: 135,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Container(
                    height: 120,
                    width: 135,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Container(
                    height: 120,
                    width: 135,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10),
                  child: Container(
                    height: 120,
                    width: 135,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
