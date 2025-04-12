import 'package:auto_scroll_slider/auto_scroll_slider.dart';
import 'package:blood_bank_management/Add Donar.dart';
import 'package:blood_bank_management/Blood Bank.dart';
import 'package:blood_bank_management/Blood Request.dart';
import 'package:blood_bank_management/My Navigation Drawer.dart';
import 'package:blood_bank_management/Search Donar.dart';
import 'package:blood_bank_management/UserModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> image = ['home_image1.png', 'home_image2.png', 'home_image3.png'];
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        actions: [
          Image.asset('assets/images/blood.png'),
          SizedBox(width: 5),
          Text('Blood Bank', style: TextStyle(fontSize: 30)),
          SizedBox(width: 180),
        ],
      ),
      drawer: MyNavigationDrawer(),
      body: Column(
        children: [
          // Image slider
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: SizedBox(
              height: 300,
              child: AutoScrollSlider(
                length: image.length,
                scrollController: scrollController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Image.asset('assets/images/${image[index]}', height: 250, width: 400, fit: BoxFit.cover,),
                  );
                },
              ),
            ),
          ),

          // Call-to-action button
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue.shade800,
              ),
              child: Row(
                children: [
                  SizedBox(width: 18),
                  Icon(Icons.phone_android_rounded, color: Colors.yellow),
                  SizedBox(width: 80),
                  Text('TAP TO CALL', style: TextStyle(fontSize: 25, color: Colors.yellow)),
                  SizedBox(width: 80),
                  Icon(Icons.directions_bus_sharp, color: Colors.yellow),
                ],
              ),
            ),
          ),

          // Grid buttons
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.blue.shade200,
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  // Add Donar
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyAddDonar()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 10, bottom: 10, left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 35),
                              Icon(Icons.person_add, color: Colors.blue.shade900, size: 70),
                              SizedBox(height: 5),
                              Text('Add Donar', style: TextStyle(fontSize: 25, color: Colors.blue.shade900)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Search Donar
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MySearchDonor()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 20, bottom: 10, left: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 35),
                              Icon(Icons.search, color: Colors.blue.shade900, size: 70),
                              SizedBox(height: 5),
                              Text('Search Donar', style: TextStyle(fontSize: 25, color: Colors.blue.shade900)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Blood Request
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyBloodRequest()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10, bottom: 20, left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 35),
                              Icon(Icons.live_help_rounded, color: Colors.blue.shade900, size: 70),
                              SizedBox(height: 10),
                              Text('Blood Request', style: TextStyle(fontSize: 25, color: Colors.blue.shade900)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Blood Bank
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyBloodBankPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20, bottom: 20, left: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70,
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(height: 35),
                              Icon(Icons.account_balance, color: Colors.blue.shade900, size: 70),
                              SizedBox(height: 5),
                              Text('Blood Bank', style: TextStyle(fontSize: 25, color: Colors.blue.shade900)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
