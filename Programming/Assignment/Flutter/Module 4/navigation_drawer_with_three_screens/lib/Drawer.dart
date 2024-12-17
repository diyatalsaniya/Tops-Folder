import 'package:flutter/material.dart';
import 'package:navigation_drawer_with_three_screens/MyAccounts.dart';
import 'package:navigation_drawer_with_three_screens/MyHome.dart';
import 'package:navigation_drawer_with_three_screens/MySettings.dart';

class MyNavigationDrawer extends StatefulWidget {
  const MyNavigationDrawer({super.key});

  @override
  State<MyNavigationDrawer> createState() => _MyNavigationDrawerState();
}

class _MyNavigationDrawerState extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            drawerHeader(context),
            drawerMenuItem(context)
          ],
        ),
      ),
    );
  }

  drawerHeader(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 60.0),
    child: Container (
        color: Colors.grey.shade400,
        width: double.infinity,
        child: Column(
          children: [
            // CircleAvatar(
            //   radius: 55,
            //   backgroundImage: AssetImage('assets/images/jerry.png'),
            // ),
            SizedBox(height: 10,),
            Text('User Name',style: TextStyle(fontSize: 30,color: Colors.black),),
            SizedBox(height: 10,),
            Text('user@gmail.com',style: TextStyle(fontSize: 20,color: Colors.black),),
            SizedBox(height: 10,),
          ],
        )
    ),
  );



  drawerMenuItem(BuildContext context) => Column(
    children: [
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHome(),));
        },
      ),
      ListTile(
        leading: Icon(Icons.notification_add),
        title: Text('Notification'),
      ),
      Divider(color: Colors.black38,),
      ListTile(
        leading: Icon(Icons.account_box_outlined),
        title: Text('Accounts'),
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyAccount(),));
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mysettings(),));
        },
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('Logout'),
      ),
    ],
  );
}
