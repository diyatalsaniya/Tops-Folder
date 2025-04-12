import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'DonorModel.dart';
import 'RequestModel.dart';

class MyBloodBankPage extends StatefulWidget {
  @override
  _MyBloodBankPageState createState() => _MyBloodBankPageState();
}

class _MyBloodBankPageState extends State<MyBloodBankPage> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<DonorModel> donors = [];
  List<RequestModel> requests = [];

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    try {
      // Fetch donors
      QuerySnapshot donorSnapshot = await _firestore.collection('donors').get();
      setState(() {
        donors = donorSnapshot.docs.map((doc) => DonorModel.fromJson(doc.data() as Map<String, dynamic>)).toList();
      });

      // Fetch requests
      QuerySnapshot requestSnapshot = await _firestore.collection('requests').get();
      setState(() {
        requests = requestSnapshot.docs.map((doc) => RequestModel.fromJson(doc.data() as Map<String, dynamic>)).toList();
      });
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Donors & Requests'),
      // ),
      body: donors.isEmpty && requests.isEmpty ? Center(
          child: CircularProgressIndicator()) : ListView(
        children: [
          SizedBox(height: 20,),
          // Donors Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text('Donors', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
            ),
          ),
          ...donors.map((donor) => Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Card(
              color: Colors.red.shade100,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: ListTile(
                title: Text('Name: ${donor.donorName}', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Blood Group: ${donor.donorBloodGroup}'),
                    Text('City: ${donor.donorCity}'),
                    Text('Hospital: ${donor.donorHospitalName}'),
                    Text('Contact: ${donor.donorContact}'),
                    Text('Age: ${donor.donorAge}'),
                  ],
                ),
              ),
            ),
          )).toList(),

          // Requests Section
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
                child: Text('Requests', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
            ),
          ),
          ...requests.map((request) => Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Card(
              color: Colors.red.shade100,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: ListTile(
                title: Text('Requester: ${request.requesterName}', style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Blood Needed: ${request.requesterBloodGroup}'),
                    Text('City: ${request.requesterCity}'),
                    Text('Hospital: ${request.requesterHospitalName}'),
                    // Text('Status: ${request.status}'),
                  ],
                ),
              ),
            ),
          )).toList(),
        ],
      ),
    );
  }
}