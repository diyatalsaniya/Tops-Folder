import 'package:flutter/material.dart';
import 'package:tea_diary_app/Bill%20History.dart';
import 'package:tea_diary_app/Generate%20Bill.dart';
import 'package:tea_diary_app/Item.dart';
import 'package:tea_diary_app/My%20Navtigation%20Drawer.dart';
import 'package:tea_diary_app/New%20Order.dart';
import 'package:tea_diary_app/Seller.dart';
import 'package:tea_diary_app/Sellerwise%20Item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tea Diary', style: TextStyle(color: Colors.white, fontSize: 25),),
        backgroundColor: Colors.brown,
      ),
      drawer: MyNavtigationDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white38,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 250,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown, // Moved color inside BoxDecoration
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 60),
                          Text('0', style: TextStyle(fontSize: 50, color: Colors.white)),
                          SizedBox(height: 20),
                          Text('Tea/Coffee', style: TextStyle(fontSize: 25, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                  child: Container(
                    height: 250,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.brown, // Moved color inside BoxDecoration
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 60,),
                          Text('₹ 0', style: TextStyle(fontSize: 50, color: Colors.white),),
                          SizedBox(height: 20,),
                          Text('Amount', style: TextStyle(fontSize: 28, color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),


            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MySellerPage(title: '',)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade400, // Moved color inside BoxDecoration
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Icon(Icons.groups_rounded, color: Colors.brown, size: 60,),
                          Text('Seller', style: TextStyle(fontSize: 22, color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyItemPage(sellers: [],)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade400, // Moved color inside BoxDecoration
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 13,),
                          Icon(Icons.menu_book_outlined, color: Colors.brown, size: 55,),
                          Text('Item', style: TextStyle(fontSize: 22, color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MySellerItemPage(sellers: [],)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade400, // Moved color inside BoxDecoration
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5,),
                          Icon(Icons.person, color: Colors.brown, size: 55,),
                          Text('Sellerwise', style: TextStyle(fontSize: 20, color: Colors.black),),
                          Text('Item', style: TextStyle(fontSize: 20, color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),


            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyNewOrderPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade400, // Moved color inside BoxDecoration
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 13,),
                          Icon(Icons.edit_calendar_rounded, color: Colors.brown, size: 55,),
                          Text('New Order', style: TextStyle(fontSize: 20, color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyGenerateBillPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20, bottom: 20),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade400, // Moved color inside BoxDecoration
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Image.asset('assets/images/generate_bill.png', height: 50, width: 50, color: Colors.brown,),
                          Text('Generate', style: TextStyle(fontSize: 20, color: Colors.black),),
                          Text('Bill', style: TextStyle(fontSize: 20, color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyBillHistoryPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20, bottom: 20),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.shade400, // Moved color inside BoxDecoration
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 13,),
                          Icon(Icons.history, color: Colors.brown, size: 55,),
                          Text('Bill History', style: TextStyle(fontSize: 20, color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 170,),
            Row(
              children: [
                SizedBox(width: 340,),
                Container(
                  height: 50,
                  width: 50,
                  // color: Colors.brown,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(Icons.share, color: Colors.white,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
