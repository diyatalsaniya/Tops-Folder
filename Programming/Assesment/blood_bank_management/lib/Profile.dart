import 'package:blood_bank_management/Sign%20In.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text('Profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
            SizedBox(height: 10,),
            Icon(Icons.account_circle, size: 100,color: Colors.red,),
            SizedBox(height: 20,),
            Container(
              height: 470,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border(
                    top: BorderSide(
                        color: Colors.black38
                    ),
                    right: BorderSide(
                        color: Colors.black38
                    ),
                    left: BorderSide(
                        color: Colors.black38
                    ),
                    bottom: BorderSide(
                        color: Colors.black38
                    ),
                  )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.account_circle_outlined, color: Colors.red.shade200, size: 30,),
                        SizedBox(width: 50,),
                        Text('Your Name', style: TextStyle(fontSize: 25),),
                      ],
                    ),
                  ),
                  Divider(color: Colors.black38,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.email, color: Colors.red.shade200, size: 30,),
                        SizedBox(width: 50,),
                        Text('Email', style: TextStyle(fontSize: 25),),
                      ],
                    ),
                  ),
                  Divider(color: Colors.black38,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.phone_android, color: Colors.red.shade200, size: 30,),
                        SizedBox(width: 50,),
                        Text('Contact Number', style: TextStyle(fontSize: 25),),
                      ],
                    ),
                  ),
                  Divider(color: Colors.black38,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.cake_outlined, color: Colors.red.shade200, size: 30,),
                        SizedBox(width: 50,),
                        Text('Age', style: TextStyle(fontSize: 25),),
                      ],
                    ),
                  ),
                  Divider(color: Colors.black38,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.bloodtype, color: Colors.red.shade200, size: 30,),
                        SizedBox(width: 50,),
                        Text('Blood Group', style: TextStyle(fontSize: 25),),
                      ],
                    ),
                  ),
                  Divider(color: Colors.black38,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.location_city_outlined, color: Colors.red.shade200, size: 30,),
                        SizedBox(width: 50,),
                        Text('City', style: TextStyle(fontSize: 25),),
                      ],
                    ),
                  ),
                  Divider(color: Colors.black38,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.local_hospital_rounded, color: Colors.red.shade200, size: 30,),
                        SizedBox(width: 50,),
                        Text('Hospital Name', style: TextStyle(fontSize: 25),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 100,),
            Row(
              children: [
                SizedBox(width: 350,),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MySignIn()));
                    },
                    child: Icon(Icons.exit_to_app_rounded, size: 45,)
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
