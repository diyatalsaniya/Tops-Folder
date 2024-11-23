import 'package:flutter/material.dart';
import 'package:question_11_login_register_form/login_form.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key, required String title});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    TextEditingController _nameController = TextEditingController();
    TextEditingController _contactController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(

      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        title: Text('Register Form'),
        backgroundColor: Colors.cyan.shade200,
      ),

      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          child: Form(
            key: formKey,
              child: Column(
                children: [
                  Text('Register Form', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

                  SizedBox(height: 60,),

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
                          return 'Enter Password';
                    }
                        else
                        {
                            return null;
                        }
                    }
                  ),

                  SizedBox(height: 30),

                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: _contactController,
                    decoration: InputDecoration(
                      labelText: 'Contact Number',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.indigo.shade900,
                                width: 2
                            )
                        )
                    ),
                      validator: (value) {
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

                  SizedBox(height: 30),

                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _emailController,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.indigo.shade900,
                                width: 2
                            )
                        )
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Password';
                      }
                      else {
                        return null;
                      }
                    }
                  ),

                  SizedBox(height: 30),

                  TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: _passwordController,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.indigo.shade900,
                                width: 2
                            )
                        )
                    ),
                    validator: (value) {
                      if (value!.isEmpty)
                        {
                          return 'Enter Password';
                        }
                      else
                        {
                          return null;
                        }
                    },
                  ),


                  SizedBox(height: 60),

                  ElevatedButton(
                      onPressed: () {
                        print('name: ${_nameController.text}');
                        print('contact: ${_contactController.text}');
                        print('emmail: ${_emailController.text}');
                        print('password: ${_passwordController.text}');
                        if (formKey.currentState!.validate())
                          {

                          }
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) =>
                                MyLoginPage(name: _nameController.text,
                                contact: _contactController.text,
                                email: _emailController.text,
                                password: _passwordController.text, title: '',),
                        ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text('Register', style: TextStyle(fontSize: 25, color: Colors.black),),
                      ),
                  style: ButtonStyle(
                    backgroundColor:WidgetStatePropertyAll(Colors.grey.shade300)
                  ),),

                ],
              )
          ),
        ),
      ),

    );
  }
}
