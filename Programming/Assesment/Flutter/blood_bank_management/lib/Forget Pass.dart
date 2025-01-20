import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController _emailController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter email to reset password',style: TextStyle(fontSize: 25),),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: 'Enter email', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(onPressed: () {
              resetPassword();
            },child: Text('Reset',style: TextStyle(fontSize: 20),),)
          ],

        ),
      ),
    );
  }

  Future resetPassword() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text('Reset link forworded to your email, plz check your email'),
        );
      },);
    }
    on FirebaseAuthException catch(e){
      print(e.message.toString());
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text(e.message.toString()),
        );
      },);
    }
  }
}