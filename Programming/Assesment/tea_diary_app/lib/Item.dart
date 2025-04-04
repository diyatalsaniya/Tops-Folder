import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tea_diary_app/New%20Order.dart';

import 'Home Page.dart';

class MyItemPage extends StatefulWidget {
  final List<String> sellers; // Accept seller names from MySellerPage

  const MyItemPage({super.key, required this.sellers});

  @override
  State<MyItemPage> createState() => _MyItemPageState();
}

class _MyItemPageState extends State<MyItemPage> {
  String? selectedSeller; // Store selected seller
  Map<String, bool> itemCheckStates = {}; // Track checkbox states for each item
  
  _addNewItem() {

    TextEditingController _nameController = TextEditingController();
    TextEditingController _priceController = TextEditingController();

    showDialog(context: (context),
        builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          titlePadding: EdgeInsets.zero,
          title: Container(
            height: 100,
            width: double.infinity,
            color: Colors.brown,
            child: Center(
              child: Text('Add New Item', style: TextStyle(fontSize: 30, color: Colors.white),),
            ),
          ),
        backgroundColor: Colors.white70,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
            child: Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.black)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Column(
                    children: [
                      TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Item Name'),
                    ),
                      TextField(
                        controller: _priceController,
                        decoration: const InputDecoration(labelText: 'Price'),
                        keyboardType: TextInputType.phone,
                      ),
                    ]
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20,),

          Row(
            children: [
              SizedBox(width: 30,),
              ElevatedButton(onPressed: () {
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
                child: Text('Cancle', style: TextStyle(fontSize: 20, color: Colors.white), ),),

              SizedBox(width: 30,),

              ElevatedButton(onPressed: () {
                if(selectedSeller != null && _nameController.text.isNotEmpty && _priceController.text.isNotEmpty)
                {
                  FirebaseFirestore.instance.collection('items').add({
                    'name': _nameController.text,
                    'price' : int.parse(_priceController.text),
                    'seller' : selectedSeller,
                    'isActive' : false, // Default to unchecked
                  });
                  Navigator.of(context).pop();
                }
              }, style: ElevatedButton.styleFrom(
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
                child: Text('Add', style: TextStyle(fontSize: 20, color: Colors.white),),)
            ],
          )
          ],
        );
      }
    );
  }

  // Save the checkbox states to Firestore
  void _saveItemStates(List<QueryDocumentSnapshot> items) {
    for (var item in items) {
      String itemId = item.id;
      bool isActive = itemCheckStates[itemId] ?? false;
      FirebaseFirestore.instance.collection('items').doc(itemId).update({
        'isActive': isActive,
      });
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Item states saved!')),
    );
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
        title: Text(
          'Manage Menu Item', style: TextStyle(color: Colors.white, fontSize: 25),),
        backgroundColor: Colors.brown,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  SizedBox(width: 30),
                  Text('Tea Seller', style: TextStyle(fontSize: 25, color: Colors.brown)),
                  SizedBox(width: 20),
                  Text(':', style: TextStyle(fontSize: 25)),
                  SizedBox(width: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance.collection('sellers').snapshots(),
                      builder: (context, snapshot) {
                        final sellers = snapshot.data!.docs.map((doc)  => doc['name'] as String).toList();

                        return DropdownButton<String>(
                              value: selectedSeller,
                              isExpanded: true,
                              style: TextStyle(fontSize: 25, color: Colors.black),
                              hint: Text('Select Seller'),
                              items: sellers.map((seller) {
                                return DropdownMenuItem<String>(
                                  value: seller,
                                  child: Text(seller),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  selectedSeller = newValue;
                                  itemCheckStates.clear(); // Reset checkbox states
                                  print(selectedSeller);
                                });
                              },
                              selectedItemBuilder: (BuildContext context) {
                                return sellers.map<Widget>((String value) {
                                  return Container(
                                    alignment: Alignment.center,
                                    child: Text(value, style: TextStyle(color: Colors.black,)),
                                  );
                                }).toList();
                              },
                            );
                        },)
                    ),
                  )
                ],
              ),
            ),
          ),

          // Item List
          Expanded(
            child: selectedSeller == null
                ? const Center(
              child: Text('Please select a seller', style: TextStyle(fontSize: 20, color: Colors.black),),
            )
                : StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('items').where('seller', isEqualTo: selectedSeller).snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return const Center(child: Text('Error loading items'));
                }
                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return const Center(child: Text('No items found'));
                }

                final items = snapshot.data!.docs;

                // Initialize checkbox states if not already set
                for (var item in items) {
                  itemCheckStates.putIfAbsent(
                    item.id,
                        () => item['isActive'] as bool? ?? false,
                  );
                }

                return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    final itemName = item['name'] as String;
                    final itemPrice = item['price'] as int;
                    final itemId = item.id;

                    return Padding(
                      padding: const EdgeInsets.only(top: 10,right: 10, left: 10),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              itemName,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text(
                              itemPrice.toString(),
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                          trailing: Checkbox(
                            value: itemCheckStates[itemId] ?? false,
                            onChanged: (bool? value) {
                              setState(() {
                                itemCheckStates[itemId] = value ?? false;
                              });
                            },
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          // Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (selectedSeller != null) {
                      FirebaseFirestore.instance.collection('items').where('seller', isEqualTo: selectedSeller).get().then((snapshot)
                      {
                        _saveItemStates(snapshot.docs);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyNewOrderPage()));
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please select a seller')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    backgroundColor: Colors.brown,
                  ),
                  child: const Text('Save', style: TextStyle(fontSize: 25, color: Colors.white),),
                ),
                ElevatedButton(
                  onPressed: _addNewItem,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    backgroundColor: Colors.brown,
                  ),
                  child: const Text(
                    'Add New Item',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      //     SizedBox(height: 300,),
      //
      //     Row(
      //       children: [
      //         SizedBox(width: 25,),
      //         ElevatedButton(onPressed: () {
      //           print('Save Button Pressed');
      //         },  style: ElevatedButton.styleFrom(
      //             shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(5), // Adjust the radius here
      //             ),
      //             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10), // Button size
      //             backgroundColor: Colors.brown, // Background color
      //             foregroundColor: Colors.black, // Text color
      //             ),
      //             child: Text('Save', style: TextStyle(fontSize: 25, color: Colors.white),)
      //         ),
      //
      //         SizedBox(width: 50,),
      //         ElevatedButton(onPressed: () {
      //           _addNewItem();
      //         },  style: ElevatedButton.styleFrom(
      //           shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(5), // Adjust the radius here
      //           ),
      //           padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10), // Button size
      //           backgroundColor: Colors.brown, // Background color
      //           foregroundColor: Colors.black, // Text color
      //         ),
      //             child: Text('Add New Item', style: TextStyle(fontSize: 25, color: Colors.white),)
      //         ),
      //       ],
      //     )
      //   ],
      //
      // ),
    );
  }
}
