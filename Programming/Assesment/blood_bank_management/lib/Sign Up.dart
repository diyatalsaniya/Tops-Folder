import 'package:blood_bank_management/Home%20Page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

import 'UserModel.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({super.key});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _cpassController = TextEditingController();

  Future createaccount() async {
    if (_passController.text.trim() == _cpassController.text.trim()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passController.text.trim());
      String _id = randomAlphaNumeric(10);
      print('id : $_id');

      String _name = _nameController.text;
      String _email = _emailController.text.toString();
      int _contact = int.parse(_contactController.text.toString());
      String _password = _passController.text.toString();

      final ur = UserModel(
          userId: _id,
          userName: _name,
          userEmail: _email,
          userContact: _contact,
          userPassword: _password
      );

      FirebaseFirestore.instance.collection('users').doc(_id).set(ur.toJson());

      Fluttertoast.showToast(
          msg: "Created Successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 20
      );

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150,),
            Text('Create Account', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 30,),
            // Image.asset('assets/images/sign_in.png',height: 150, width: 150,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: 'Email Id',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: TextFormField(
                controller: _contactController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Contact No',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: TextFormField(
                controller: _passController,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: TextFormField(
                controller: _cpassController,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Colors.black),
                    filled: true,
                    fillColor: Colors.white70,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    )
                ),
              ),
            ),

            SizedBox(height: 50,),

            GestureDetector(
              onTap: () {
                if(_nameController.text.isNotEmpty && _emailController.text.isNotEmpty && _contactController.text.isNotEmpty) {
                  createaccount();
                }
              },
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                    )
                ),
                child: Center(
                    child: Text('Submit', style: TextStyle(fontSize: 25, color: Colors.black),)
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
