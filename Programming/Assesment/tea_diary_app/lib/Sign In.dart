import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tea_diary_app/Home%20Page.dart';

import 'Sign Up.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({super.key, required String title});

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {

  TextEditingController _unameController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.brown,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Text('Login', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
              
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: _unameController,
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

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
              
              SizedBox(height: 100,),

              ElevatedButton(
                  onPressed: () {
                    String username = _unameController.text.trim();
                    String password = _passController.text.trim();
                      if(username.isNotEmpty && password.isNotEmpty) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: '',),));
                      }
                      else {
                        Fluttertoast.showToast(
                            msg: "Please fill both field",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 50,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 20.0
                        );
                      }
                  },
                  style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Adjust the radius here
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Button size
                  backgroundColor: Colors.white, // Background color
                  foregroundColor: Colors.black, // Text color
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text('Login', style: TextStyle(fontSize: 25),),
                  ),
              ),

              SizedBox(height: 20,),

              GestureDetector(
                  child: Text('Create Account', style: TextStyle(fontSize: 25, color: Colors.black),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)  => MySignUp(title: '',), ));
                },
              ),
            ],
          ),
        )
      ),
    );
  }
}
