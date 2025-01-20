import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Login%20Page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'UserModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  List<String> usersList = [];
  String? id;

  Future getDocuments() async {
    await FirebaseFirestore.instance
        .collection('users')
        .get()
        .then((snapShot) => snapShot.docs.forEach((user) {
      print(user.reference);
      usersList.add(user.reference.id);
      // id = usersList.elementAt(1).toString();
    }));
  }

  final fireStore = FirebaseFirestore.instance.collection('users').snapshots();
  CollectionReference ref = FirebaseFirestore.instance.collection('users');

  TextEditingController _nameController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Signed in as : ${user.email}',
              style: TextStyle(fontSize: 25),
            ),
            StreamBuilder(
              stream: fireStore,
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          child: ListTile(
                              leading: IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text('Delete'),
                                          content: const SingleChildScrollView(
                                            child: ListBody(
                                              children: <Widget>[
                                                Text(
                                                  'Are you sure ?',
                                                  style: TextStyle(fontSize: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              child: const Text(
                                                'No',
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            TextButton(
                                              child: const Text(
                                                'Yes',
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              onPressed: () {
                                                ref
                                                    .doc(snapshot
                                                    .data!.docs[index]['id']
                                                    .toString())
                                                    .delete();
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  icon: Icon(Icons.delete)),
                              title: Text(
                                snapshot.data!.docs[index]['name'],
                                style: TextStyle(fontSize: 20),
                              ),
                              subtitle: Text(
                                snapshot.data!.docs[index]['contact'].toString(),
                                style: TextStyle(fontSize: 20),
                              ),
                              trailing: IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text('Update'),
                                          backgroundColor: Colors.grey.shade300,
                                          content: SingleChildScrollView(
                                            child: ListBody(
                                              children: <Widget>[
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                                  child: Container(
                                                    padding:
                                                    EdgeInsets.only(left: 20),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.white),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                        color: Colors.white),
                                                    child: TextField(
                                                      controller: _nameController,
                                                      decoration: InputDecoration(
                                                          hintText:
                                                          '${snapshot.data!.docs[index]['name']}',
                                                          border: InputBorder.none),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                                  child: Container(
                                                    padding:
                                                    EdgeInsets.only(left: 20),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.white),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                        color: Colors.white),
                                                    child: TextField(
                                                      controller:
                                                      _contactController,
                                                      decoration: InputDecoration(
                                                          hintText:
                                                          '${snapshot.data!.docs[index]['contact']}',
                                                          border: InputBorder.none),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                                  child: Container(
                                                    padding:
                                                    EdgeInsets.only(left: 20),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.white),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                        color: Colors.white),
                                                    child: TextField(
                                                      controller:
                                                      _addressController,
                                                      decoration: InputDecoration(
                                                          hintText:
                                                          '${snapshot.data!.docs[index]['address']}',
                                                          border: InputBorder.none),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5),
                                                  child: Container(
                                                    padding:
                                                    EdgeInsets.only(left: 20),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.white),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                        color: Colors.white),
                                                    child: TextField(
                                                      controller: _emailController,
                                                      decoration: InputDecoration(
                                                          hintText:
                                                          '${snapshot.data!.docs[index]['email']}',
                                                          border: InputBorder.none),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              child: Center(
                                                  child: const Text(
                                                    'Update',
                                                    style: TextStyle(fontSize: 20),
                                                  )),
                                              onPressed: () {
                                                String _name = _nameController.text;
                                                int _contact = int.parse(_contactController.text.toString());
                                                String _email = _emailController.text.toString();
                                                String _address = _addressController.text.toString();
                                                final u = UserModel(
                                                    name: _name,
                                                    contact: _contact,
                                                    address: _address,
                                                    email: _email);

                                                ref.doc(snapshot
                                                    .data!.docs[index]['id']
                                                    .toString()).update(u.toJsonn());
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  icon: Icon(Icons.edit))),
                        );
                      },
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}