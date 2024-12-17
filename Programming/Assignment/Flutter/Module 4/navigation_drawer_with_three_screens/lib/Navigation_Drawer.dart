import 'package:flutter/material.dart';
import 'package:navigation_drawer_with_three_screens/Drawer.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key, required String title});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationDrawer'),
        backgroundColor: Colors.green,
      ),
      drawer: MyNavigationDrawer(),
    );
  }
}
