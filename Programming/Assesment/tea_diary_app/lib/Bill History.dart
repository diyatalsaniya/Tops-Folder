import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'Home Page.dart'; // For date formatting

class MyBillHistoryPage extends StatefulWidget {
  const MyBillHistoryPage({super.key});

  @override
  State<MyBillHistoryPage> createState() => _MyBillHistoryPageState();
}

class _MyBillHistoryPageState extends State<MyBillHistoryPage> {

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
          'Bill History',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.brown,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('orders')
            .snapshots(), // Removed orderBy for now to fetch all orders
        builder: (context, snapshot) {
          // Debug logging for connection state
          if (snapshot.connectionState == ConnectionState.waiting) {
            print('StreamBuilder: Loading orders...');
            return const Center(child: CircularProgressIndicator());
          }

          // Debug logging for errors
          if (snapshot.hasError) {
            print('StreamBuilder: Error loading orders: ${snapshot.error}');
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Error loading bill history'),
                  const SizedBox(height: 10),
                  Text('Error: ${snapshot.error}'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {}); // Trigger a rebuild to retry
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          // Debug logging for empty data
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            print('StreamBuilder: No orders found in Firestore');
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('No orders found'),
                  SizedBox(height: 20),
                ],
              ),
            );
          }

          // Debug logging for successful data fetch
          final orders = snapshot.data!.docs;
          print('StreamBuilder: Found ${orders.length} orders');

          // Log the raw data of each order to inspect its structure
          for (var order in orders) {
            print('Order ${order.id}: ${order.data()}');
          }

          return ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: orders.length,
            itemBuilder: (context, index) {
              final order = orders[index];
              // Safely access fields with fallbacks
              final seller = order['seller'] as String? ?? 'Unknown Seller';

              // Handle total field (might be a string or number)
              double total = 0.0;
              try {
                final totalRaw = order['total'];
                if (totalRaw is num) {
                  total = totalRaw.toDouble();
                } else if (totalRaw is String) {
                  total = double.tryParse(totalRaw) ?? 0.0;
                }
              } catch (e) {
                print('Error parsing total for order ${order.id}: $e');
              }

              // Handle timestamp with a fallback (try 'timestamp' or 'date')
              DateTime timestamp;
              try {
                if (order['timestamp'] != null) {
                  timestamp = (order['timestamp'] as Timestamp).toDate();
                } else if (order['date'] != null) {
                  // If the field is named 'date' instead of 'timestamp'
                  timestamp = (order['date'] as Timestamp).toDate();
                } else {
                  print('No timestamp or date field found for order ${order.id}');
                  timestamp = DateTime.now();
                }
              } catch (e) {
                print('Error parsing timestamp for order ${order.id}: $e');
                timestamp = DateTime.now();
              }

              final formattedDateTime = DateFormat('dd-MM-yyyy hh:mm:ss a').format(timestamp);

              // Wrap each order in a Container
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal:10, vertical: 5),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100, // Light grey background
                    border: Border.all(color: Colors.grey.shade300), // Border
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(seller, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
                          const SizedBox(height: 5),
                          Text(formattedDateTime, style: const TextStyle(fontSize: 16, color: Colors.grey,),
                          ),
                        ],
                      ),
                      Text('₹$total', style: const TextStyle(fontSize: 18, color: Colors.green,),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}