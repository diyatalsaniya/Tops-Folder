import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'DonorModel.dart';

class MySearchDonor extends StatefulWidget {
  @override
  _MySearchDonorState createState() => _MySearchDonorState();
}

class _MySearchDonorState extends State<MySearchDonor> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<DonorModel> donors = [];
  List<DonorModel> filteredDonors = [];
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchBloodGroups();
    _searchController.addListener(_filterDonors);
  }

  Future<void> _fetchBloodGroups() async {
    try {
      QuerySnapshot donorSnapshot = await _firestore.collection('donors').get();
      setState(() {
        donors = donorSnapshot.docs.map((doc) => DonorModel.fromJson(doc.data() as Map<String, dynamic>)).toList();
        filteredDonors = donors;
      });
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  void _filterDonors() {
    String searchQuery = _searchController.text.trim();
    setState(() {
      if (searchQuery.isEmpty) {
        filteredDonors = donors;
      } else {
        filteredDonors = donors.where((donor) {
          // Check if donorBloodGroup is not null before calling toUpperCase
          final bloodGroup = donor.donorBloodGroup;
          if (bloodGroup == null) return false; // Skip null blood groups
          return bloodGroup.toUpperCase() == searchQuery.toUpperCase();
        }).toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: donors.isEmpty ? Center(child: CircularProgressIndicator())
          : Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search Blood Group',
                hintText: 'e.g., A+, O-, B+',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: filteredDonors.isEmpty
                ? Center(child: Text('No donors found for this blood group'))
                : ListView(
              children: filteredDonors.map((donor) => Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Card(
                  color: Colors.grey.shade200,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: ListTile(
                    title: Text(
                      'Name: ${donor.donorName ?? 'Unknown'}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Blood Group: ${donor.donorBloodGroup ?? 'Not specified'}'),
                        Text('City: ${donor.donorCity ?? 'Not specified'}'),
                        Text('Hospital: ${donor.donorHospitalName ?? 'Not specified'}'),
                        Text('Contact: ${donor.donorContact ?? 'Not specified'}'),
                        Text('Age: ${donor.donorAge ?? 'Not specified'}'),
                      ],
                    ),
                  ),
                ),
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}


// // Fetch blood groups from Firestore
// Future<void> _fetchBloodGroups() async {
//   try {
//     QuerySnapshot snapshot =
//     await FirebaseFirestore.instance.collection('donors').get();
//     print("Firestore snapshot: $snapshot"); // Debug: Check snapshot
//     setState(() {
//       _bloodGroups = snapshot.docs.map((doc) {
//         print("Document data: ${doc.data()}"); // Debug: Inspect each document
//         return doc['donorBloodGroup'] as String?;
//       })
//           .where((bloodGroup) => bloodGroup != null) // Filter out nulls
//           .cast<String>() // Cast to non-nullable String
//           .toSet() // Remove duplicates
//           .toList();
//       _filteredBloodGroups = List.from(_bloodGroups); // Initial display list
//       print("Fetched blood groups: $_bloodGroups"); // Debug: Check fetched data
//     });
//   } catch (e) {
//     print("Detailed error fetching blood groups: $e"); // Debug: Detailed error
//     if (!mounted) return; // Check if widget is still mounted
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text("Failed to load blood groups: $e")),
//     );
//   }
// }
//
// // Filter blood groups based on search input
// void _filterBloodGroups(String query) {
//   setState(() {
//     if (query.isEmpty) {
//       _filteredBloodGroups = List.from(_bloodGroups);
//     } else {
//       _filteredBloodGroups = _bloodGroups
//           .where((bloodGroup) =>
//           bloodGroup.toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     }
//   });
// }
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     key: GlobalKey<ScaffoldState>(), // Add a GlobalKey to avoid context issues
//     appBar: AppBar(
//       title: Text('Blood Group Search'),
//     ),
//     body: Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           // Search bar
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Search Blood Group',
//               hintText: 'e.g., A+, O-',
//               border: OutlineInputBorder(),
//               prefixIcon: Icon(Icons.search),
//             ),
//             onChanged: (value) {
//               _filterBloodGroups(value); // Filter list on text change
//             },
//           ),
//           SizedBox(height: 20),
//           // Display loading indicator or filtered list
//           Expanded(
//             child: _bloodGroups.isEmpty
//                 ? Center(child: CircularProgressIndicator()) // Loading state
//                 : ListView.builder(
//               itemCount: _filteredBloodGroups.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(_filteredBloodGroups[index]),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     ),
