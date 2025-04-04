import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'Bill History.dart';
import 'Home Page.dart'; // For date formatting

class MyGenerateBillPage extends StatefulWidget {
  const MyGenerateBillPage({super.key});

  @override
  State<MyGenerateBillPage> createState() => _MyGenerateBillPageState();
}

class _MyGenerateBillPageState extends State<MyGenerateBillPage> {
  String? selectedSeller; // Store selected seller
  DateTime selectedDate = DateTime.now(); // Store selected date
  Map<String, int> itemQuantities = {}; // Track quantities for each item
  double totalPrice = 0.0; // Track total price

  // Show date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Calculate total price based on quantities and prices
  double _calculateTotal(List<QueryDocumentSnapshot> items) {
    double total = 0.0;
    for (var item in items) {
      final price = (item['price'] as int).toDouble();
      final quantity = itemQuantities[item.id] ?? 0;
      total += price * quantity;
    }
    return total;
  }

  // Place the order by saving it to Firestore
  _placeOrder(List<QueryDocumentSnapshot> items) {
    if (selectedSeller == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select a seller')),
      );
      return;
    }

    // Prepare order data
    List<Map<String, dynamic>> orderItems = [];
    for (var item in items) {
      final quantity = itemQuantities[item.id] ?? 0;
      if (quantity > 0) {
        orderItems.add({
          'name': item['name'],
          'quantity': quantity,
          'price': item['price'],
        });
      }
    }

    if (orderItems.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please select at least one item')),
      );
      return;
    }

    // Save order to Firestore
    FirebaseFirestore.instance.collection('orders').add({
      'seller': selectedSeller,
      'date': DateFormat('dd-MM-yyyy').format(selectedDate),
      'items': orderItems,
      'total': totalPrice,
    }).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Order placed successfully!')),
      );
      // Reset quantities after placing the order
      setState(() {
        itemQuantities.clear();
        totalPrice = 0.0;
      });
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to place order: $error')),
      );
    });
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
        title: const Text(
          'Generate Bill',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          // Dropdown Container
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
                  const SizedBox(width: 30),
                  const Text(
                    'Tea Seller',
                    style: TextStyle(fontSize: 25, color: Colors.brown),
                  ),
                  const SizedBox(width: 20),
                  const Text(':', style: TextStyle(fontSize: 25)),
                  const SizedBox(width: 20),
                  Expanded(
                    child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance.collection('sellers').snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        }
                        if (snapshot.hasError) {
                          return Center(child: Text('Error loading sellers'));
                        }
                        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                          return Center(child: Text('No sellers found'));
                        }

                        final sellers = snapshot.data!.docs.map((doc) => doc['name'] as String).toList();

                        return DropdownButton<String>(
                          value: selectedSeller,
                          isExpanded: true,
                          style: const TextStyle(fontSize: 25, color: Colors.black),
                          hint: const Text('Select Seller'),
                          items: sellers.map((seller) {
                            return DropdownMenuItem<String>(
                              value: seller,
                              child: Text(seller),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedSeller = newValue;
                              itemQuantities.clear(); // Reset quantities
                              totalPrice = 0.0;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Date Picker
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () => _selectDate(context),
                  ),
                  SizedBox(width: 20),
                  Text(
                    DateFormat('dd-MM-yyyy').format(selectedDate),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),


          // Item List Header
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ITEM', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('QUANTITY', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('PRICE(₹)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Divider(height: 1,),
          ),


          // Item List
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Expanded(
                child: selectedSeller == null
                    ? Center(
                  child: Text(
                    'Please select a seller',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                )
                    : StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance.collection('items').where('seller', isEqualTo: selectedSeller).where('isActive', isEqualTo: true) // Only show active items
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(child: Text('Error loading items'));
                    }
                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return Center(child: Text('No active items found'));
                    }

                    final items = snapshot.data!.docs;

                    // Initialize quantities if not already set
                    for (var item in items) {
                      itemQuantities.putIfAbsent(item.id, () => 0);
                    }

                    // Calculate total price
                    totalPrice = _calculateTotal(items);

                    return ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        final itemName = item['name'] as String;
                        final itemPrice = item['price'] as int;
                        final itemId = item.id;

                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Item Name
                              SizedBox(width: 55,
                                child: Text(itemName, style: TextStyle(fontSize: 20),
                                ),
                              ),
                              // Quantity Controls
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove),
                                    onPressed: () {
                                      setState(() {
                                        if (itemQuantities[itemId]! > 0) {
                                          itemQuantities[itemId] = itemQuantities[itemId]! - 1;
                                        }
                                      });
                                    },
                                  ),
                                  Text(
                                    '${itemQuantities[itemId]}',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.add),
                                    onPressed: () {
                                      setState(() {
                                        itemQuantities[itemId] = itemQuantities[itemId]! + 1;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              // Price Calculation
                              Text(
                                'x $itemPrice = ${itemQuantities[itemId]! * itemPrice}',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Divider(height: 1,),
          ),


          // Total Price
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('TOTAL', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    Text('₹ $totalPrice', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ),


          SizedBox(height: 30,),


          // Place Order Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                if (selectedSeller != null) {
                  FirebaseFirestore.instance.collection('items').where('seller', isEqualTo: selectedSeller).where('isActive', isEqualTo: true).get().then((snapshot) {
                    _placeOrder(snapshot.docs);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyBillHistoryPage()));
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
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                backgroundColor: Colors.brown,
              ),
              child: const Text('Place Order', style: TextStyle(fontSize: 25, color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}