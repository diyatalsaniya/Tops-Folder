import 'package:blood_bank_management/Home%20Page.dart';
import 'package:blood_bank_management/Sign%20Up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({super.key});

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  Future signIn() async {
    if (_emailController.text.isNotEmpty && _passController.text.isNotEmpty) {

      print('Login clicked');

      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passController.text.trim(),
        );

        Fluttertoast.showToast(
          msg: "Login successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 20.0,
        );

        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()),);
      }
      catch (e) {
        Fluttertoast.showToast(
          msg: "Please check your email or password",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 20.0,
        );
      }
    }
    else {
      Fluttertoast.showToast(
        msg: "Please fill all fields!!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 20,
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            Text('Sign In', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 50,),
            // Image.asset('assets/images/sign_in.png',height: 150, width: 150,),
            SizedBox(height: 20,),
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
                      borderSide: BorderSide(color: Colors.white),
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
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
                      borderSide: BorderSide(color: Colors.white),
                    )
                ),
              ),
            ),

            SizedBox(height: 100,),

            GestureDetector(
              onTap: () {
                  {
                    signIn();
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
                    child: Text('Login', style: TextStyle(fontSize: 25, color: Colors.black),)
                ),
              ),
            ),

            SizedBox(height: 20,),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MySignUp()));
              },
                child: Text('Create Account', style: TextStyle(fontSize: 30, color: Colors.white),)
            )
          ],
        ),
      ),
    );
  }
}
