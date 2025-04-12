import 'package:blood_bank_management/Add%20Donar.dart';
import 'package:blood_bank_management/Blood%20Bank.dart';
import 'package:blood_bank_management/Blood%20Request.dart';
import 'package:blood_bank_management/Home%20Page.dart';
import 'package:blood_bank_management/Profile.dart';
import 'package:blood_bank_management/Search%20Donar.dart';
import 'package:blood_bank_management/UserModel.dart';
import 'package:flutter/material.dart';
import 'Sign In.dart';

class MyNavigationDrawer extends StatefulWidget {


  const MyNavigationDrawer({super.key});

  @override
  State<MyNavigationDrawer> createState() => _MyNavigationDrawerState();
}

class _MyNavigationDrawerState extends State<MyNavigationDrawer> {


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            drawerHeader(context),
            drawerMenuItem(context),
          ],
        ),
      ),
    );
  }

  Widget drawerHeader(BuildContext context) => Container(
    width: double.infinity,
    color: Colors.red,
    child: Column(
      children: [
        SizedBox(height: 40),
        Icon(Icons.account_circle_sharp, size: 100, color: Colors.white),
        SizedBox(height: 10),
        Text('Username',
            style: TextStyle(fontSize: 25, color: Colors.white)),
        SizedBox(height: 10),
        Text('user@example.com',
            style: TextStyle(fontSize: 25, color: Colors.white)),
        SizedBox(height: 10),
      ],
    ),
  );

  Widget drawerMenuItem(BuildContext context) => Column(
    children: [
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home', style: TextStyle(fontSize: 20)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  MyHomePage(),
            ),
          );
        },
      ),
      Divider(color: Colors.black38),
      ListTile(
        leading: Icon(Icons.person_add),
        title: Text('Add Donar', style: TextStyle(fontSize: 20)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyAddDonar()),
          );
        },
      ),
      Divider(color: Colors.black38),
      ListTile(
        leading: Icon(Icons.search),
        title: Text('Search Donar', style: TextStyle(fontSize: 20)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MySearchDonor()),
          );
        },
      ),
      Divider(color: Colors.black38),
      ListTile(
        leading: Icon(Icons.live_help_rounded),
        title: Text('Blood Request', style: TextStyle(fontSize: 20)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyBloodRequest()),
          );
        },
      ),
      Divider(color: Colors.black38),
      ListTile(
        leading: Icon(Icons.account_balance),
        title: Text('Blood Banks', style: TextStyle(fontSize: 20)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyBloodBankPage()),
          );
        },
      ),
      Divider(color: Colors.black38),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings', style: TextStyle(fontSize: 20)),
        onTap: () {},
      ),
      Divider(color: Colors.black38),
      ListTile(
        leading: Icon(Icons.person_pin),
        title: Text('Profile', style: TextStyle(fontSize: 20)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyProfile(),
            ),
          );
        },
      ),
      Divider(color: Colors.black38),
      SizedBox(height: 90),
      Divider(color: Colors.black38),
      ListTile(
        leading: Icon(Icons.exit_to_app_outlined),
        title: Text('Log Out', style: TextStyle(fontSize: 20)),
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => MySignIn()),
                (route) => false,
          );
        },
      ),
    ],
  );
}
