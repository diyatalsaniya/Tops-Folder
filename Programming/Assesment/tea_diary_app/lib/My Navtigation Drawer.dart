import 'package:flutter/material.dart';
import 'package:tea_diary_app/Bill%20History.dart';
import 'package:tea_diary_app/Generate%20Bill.dart';
import 'package:tea_diary_app/Home%20Page.dart';
import 'package:tea_diary_app/Item.dart';
import 'package:tea_diary_app/New%20Order.dart';
import 'package:tea_diary_app/Seller.dart';
import 'package:tea_diary_app/Sellerwise%20Item.dart';
import 'package:tea_diary_app/Sign%20In.dart';

class MyNavtigationDrawer extends StatefulWidget {
  const MyNavtigationDrawer({super.key});

  @override
  State<MyNavtigationDrawer> createState() => _MyNavtigationDrawerState();
}

class _MyNavtigationDrawerState extends State<MyNavtigationDrawer> {
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
}


drawerHeader(BuildContext context) => Container(
      width: double.infinity,
      color: Colors.brown,
      child: Column(
        children: [
          SizedBox(height: 40,),
          Image.asset('assets/images/girl.png', height: 100, width: 100,),
          SizedBox(height: 10,),
          Text('Username', style: TextStyle(fontSize: 25, color: Colors.white),),
          SizedBox(height: 10,),
          Text('user123@gmail.com', style: TextStyle(fontSize: 25, color: Colors.white),),
          SizedBox(height: 10,)
        ],
      ),
    );

drawerMenuItem(BuildContext context) => Column(
  children: [
    ListTile(
      leading: Icon(Icons.home),
      title: Text('Home', style: TextStyle(fontSize: 20),),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: '')));
      },
    ),
    Divider(color: Colors.black38,),
    ListTile(
      leading: Icon(Icons.groups_rounded),
      title: Text('Seller', style: TextStyle(fontSize: 20),),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MySellerPage(title: '',)));
      },
    ),
    Divider(color: Colors.black38,),
    ListTile(
      leading: Icon(Icons.menu_book_outlined),
      title: Text('Items', style: TextStyle(fontSize: 20),),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyItemPage(sellers: [],)));
      },
    ),
    Divider(color: Colors.black38,),
    ListTile(
      leading: Icon(Icons.person),
      title: Text('Sellerwise Item', style: TextStyle(fontSize: 20),),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MySellerItemPage(sellers: [],)));
      },
    ),
    Divider(color: Colors.black38,),
    ListTile(
      leading: Icon(Icons.edit_calendar_rounded),
      title: Text('New Order', style: TextStyle(fontSize: 20),),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyNewOrderPage()));
      },
    ),
    Divider(color: Colors.black38,),
    ListTile(
      leading: Image.asset('assets/images/generate_bill.png', height: 25, width: 25, color: Colors.black,),
      title: Text('Generate Bill', style: TextStyle(fontSize: 20),),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyGenerateBillPage()));
      },
    ),
    Divider(color: Colors.black38,),
    ListTile(
      leading: Icon(Icons.history),
      title: Text('Bill History', style: TextStyle(fontSize: 20),),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyBillHistoryPage()));
      },
    ),
    Divider(color: Colors.black38,),
    SizedBox(height: 35,),
    ListTile(

    ),
    Divider(color: Colors.black38,),
    ListTile(
      leading: Icon(Icons.exit_to_app_outlined),
      title: Text('Log Out', style: TextStyle(fontSize: 20),),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MySignIn(title: '')));
      },
    ),
  ],
);

