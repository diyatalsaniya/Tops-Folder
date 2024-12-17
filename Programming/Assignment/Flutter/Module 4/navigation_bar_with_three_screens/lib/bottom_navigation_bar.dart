import 'package:flutter/material.dart';
import 'package:navigation_bar_with_three_screens/home.dart';
import 'package:navigation_bar_with_three_screens/profile.dart';
import 'package:navigation_bar_with_three_screens/settings.dart';

class Mynavigationbar extends StatefulWidget {
  const Mynavigationbar({super.key, required String title});

  @override
  State<Mynavigationbar> createState() => _MynavigationbarState();
}

class _MynavigationbarState extends State<Mynavigationbar> {

  int myIndex = 0;

  List<Widget> pageText = [
    Myhome(),
    Myprofile(),
    Mysettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar',style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
       child: pageText[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: myIndex,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue.shade600),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.teal.shade400 ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.deepPurple.shade500),
    ],
        showSelectedLabels: true,
    ),
    );
  }
}
