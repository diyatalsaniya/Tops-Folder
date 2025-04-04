import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';
import 'package:tea_diary_app/SellerModel.dart';

import 'Home Page.dart';

class MySellerPage extends StatefulWidget {
  const MySellerPage({super.key, required String title});

  @override
  State<MySellerPage> createState() => _MySellerPageState();
}

class _MySellerPageState extends State<MySellerPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  // List to store seller data
  List<Map<String, String>> sellers = [];


  _firebaseSeller() {
    print(
        'function called : ${_nameController.text} ${_addressController
            .text} ${_mobileController.text} '
    );

    String sellerName = _nameController.text.trim();
    String sellerMobile = _mobileController.text.trim();
    String sellerAddress = _addressController.text.trim();

    if (sellerName.isNotEmpty && sellerMobile.isNotEmpty &&
        sellerName.isNotEmpty) {
      print(
        'function called : $sellerName $sellerMobile $sellerAddress ',
      );

      String _id = randomAlphaNumeric(10);
      print('id: $_id');

      String _name = _nameController.text.trim();
      String _mobile = _mobileController.text.trim().toString();
      String _address = _addressController.text.trim();

      final s = SellerModel(
        id: _id,
        name: _name,
        mobile: _mobile,
        address: _address,
      );

      FirebaseFirestore.instance.collection('sellers').doc(_id).set(s.toJson());

      Fluttertoast.showToast(
        msg: "Data Added!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 20,
      );

      // _addSeller();

      Future<void> _deleteSeller(String id) async {
        await FirebaseFirestore.instance.collection('sellers').doc(id).delete();
        Fluttertoast.showToast(
          msg: "Seller Deleted!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 20,
        );
      }
    }
  }


  // When back button click redirect in HomePage
  Future<bool> _onWillPop() async {
    // Navigate to HomePage and remove all previous routes
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage(title: '',)),
          (Route<dynamic> route) => false, // Remove all previous routes
    );
    return false; // Prevent default back navigation
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Seller List', style: TextStyle(color: Colors.white, fontSize: 25),),
          backgroundColor: Colors.brown,
          actions: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: (context),
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // No rounded corners
                      ),
                      titlePadding: EdgeInsets.zero,
                      title: Container(
                        height: 80,
                        width: double.infinity,
                        color: Colors.brown,
                        child: Center(
                          child: Text('Add New Seller', style: TextStyle(fontSize: 30, color: Colors.white),),
                        ),
                      ),
                      backgroundColor: Colors.white70,
                      actions: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 190,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: _nameController,
                                      decoration: InputDecoration(
                                        labelText: 'Name',
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      controller: _mobileController,
                                      decoration: InputDecoration(
                                        labelText: 'Mobile',
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    TextFormField(
                                      controller: _addressController,
                                      decoration: InputDecoration(
                                        labelText: 'Address',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 40),

                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              print('button clicked');
                              // _addSeller();
                              _firebaseSeller();
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ), // Adjust the radius here
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 10,
                              ),
                              // Button size
                              backgroundColor: Colors.brown,
                              // Background color
                              foregroundColor: Colors.black, // Text color
                            ),
                            child: Text('Save', style: TextStyle(fontSize: 25, color: Colors.white),),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Icon(Icons.add, color: Colors.white, size: 40),
            ),
          ],
        ),

        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('sellers').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return Center(child: Text("No Sellers Added"));
            }

            final sellers = snapshot.data!.docs;

            // sellers.isEmpty ? Center(child: Text("No Sellers Added")) :
            return ListView.builder(
                itemCount: sellers.length,
                itemBuilder: (context, index) {
                  final sellerData = sellers[index].data() as Map<
                      String,
                      dynamic>;
                  final sellerId = sellers[index].id;

                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Card(
                      color: Colors.brown.shade100,
                      elevation: 3,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      shadowColor: Colors.brown,
                      child: ListTile(
                        title: Text(sellers[index]["name"]!, style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Mobile: ${sellers[index]["mobile"]!}"),
                            Text("Address: ${sellers[index]["address"]!}"),
                          ],
                        ),

                      ),
                    ),
                  );
                }
            );
          },

        )
    );
  }
}
