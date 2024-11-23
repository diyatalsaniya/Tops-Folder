import 'package:flutter/material.dart';
import 'package:question_11_login_register_form/homepage.dart';

class MyLoginPage extends StatelessWidget {

  String name, contact, email, password;

  MyLoginPage(
  {
    required this.name,
    required this.contact,
    required this.email,
    required this.password, required String title
  })
  {}

  @override
  Widget build(BuildContext context) {

    TextEditingController _nameController = TextEditingController();
    TextEditingController _passController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('form'),
        backgroundColor: Colors.yellow,
      ),

      body: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
            children: [
              // Text('Name: $name', style: TextStyle(fontSize: 20),),
              // Text('Contact: $contact', style: TextStyle(fontSize: 20),),
              // Text('Email: $email', style: TextStyle(fontSize: 20),),
              // Text('Password: $password', style: TextStyle(fontSize: 20),),

              SizedBox(height: 40,),

              TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _nameController,
                  decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.indigo.shade900,
                              width: 2
                          )
                      )
                  ),
                  validator: (value)
                  {
                    if (value!.isEmpty)
                    {
                      return 'Enter Username';
                    }
                    else
                    {
                      return null;
                    }
                  }
              ),

              SizedBox(height: 40,),

              TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _passController,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Colors.indigo.shade900,
                              width: 2
                          )
                      )
                  ),
                  validator: (value)
                  {
                    if (value!.isEmpty)
                    {
                      return 'Enter Password';
                    }
                    else
                    {
                      return null;
                    }
                  }
              ),

              SizedBox(height: 40,),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                    MaterialPageRoute(builder: (context) => MyHome(title: '',), ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Login', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
                  ))

            ],
                    ),
          ),)
      ),
    );
  }
}
