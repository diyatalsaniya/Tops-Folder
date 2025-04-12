import 'package:blood_bank_management/DonorModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

class MyAddDonar extends StatefulWidget {
  const MyAddDonar({super.key});

  @override
  State<MyAddDonar> createState() => _MyAddDonarState();
}

class _MyAddDonarState extends State<MyAddDonar> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  String? _selectBldGrp;
  String? _selectCity;
  String? _selectHspName;

  Future saveDonorDetails() async {
    if (_nameController.text.isNotEmpty && _emailController.text.isNotEmpty && _contactController.text.isNotEmpty && _ageController.text.isNotEmpty && _selectBldGrp!=null && _selectCity!=null && _selectHspName!=null) {

      if(_nameController.text.isEmpty || _emailController.text.isEmpty || _contactController.text.isEmpty || _ageController.text.isEmpty || _selectBldGrp==null || _selectCity==null || _selectHspName==null ) {
        Fluttertoast.showToast(
          msg: "Please fill all fields",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 20,
        );
      }

      String _id = randomAlphaNumeric(10);
      print('id : $_id');

      String _name = _nameController.text;
      String _email = _emailController.text.toString();
      int _contact = int.parse(_contactController.text.toString());
      int _age = int.parse(_ageController.text.toString());
      String _bloodGrp = _selectBldGrp!;
      String _city = _selectCity!;
      String _hspName = _selectHspName!;

      final dr = DonorModel(
          donorId: _id,
          donorName: _name,
          donorEmail: _email,
          donorContact: _contact,
          donorAge: _age,
          donorBloodGroup: _bloodGrp,
          donorCity: _city,
          donorHospitalName: _hspName,
      );

      FirebaseFirestore.instance.collection('donors').doc(_id).set(dr.toJson());

      Fluttertoast.showToast(
          msg: "Details Saved",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 20
      );

      _nameController.clear();
      _emailController.clear();
      _contactController.clear();
      _ageController.clear();
      setState(() {
        _selectBldGrp = null;
        _selectCity = null;
        _selectHspName = null;
      });
      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Add Donar'),
      // ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text('Add Donar', style: TextStyle(fontSize: 45),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                controller: _nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1
                    )
                  )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: 'Email Id',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 1
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 1
                        )
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                controller: _contactController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Contact No',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 1
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 1
                        )
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: TextFormField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Age',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 1
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 1
                        )
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: DropdownButtonFormField<String>(
                value: _selectBldGrp,
                isExpanded: true,
                decoration: InputDecoration(
                  labelText: 'Blood Group',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                ),
                hint: Text('Select a Blood Group'),
                items: ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-'].map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectBldGrp = newValue;
                  });
                },
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: DropdownButtonFormField<String>(
                value: _selectCity,
                isExpanded: true,
                decoration: InputDecoration(
                  labelText: 'City',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                ),
                hint: Text('Select a City'),
                items: ['Ahmedabad', 'Anand', 'Baroda', 'Bhavnagar', 'Gandhinagar', 'Jamnagar', 'Patan', 'Rajkot', 'Surat', 'Junagadh'].map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectCity = newValue;
                  });
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: DropdownButtonFormField<String>(
                value: _selectHspName,
                isExpanded: true,
                decoration: InputDecoration(
                  labelText: 'Hospital Name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1,
                    ),
                  ),
                ),
                hint: Text('Select a Hospital Name'),
                items: ['Sunflower Multispeciality Hospital', 'Sardar Patel Hospital', 'Anand Surgical Hospital Pvt Ltd', 'Anand Children Hospital', 'Sterling Hospital', 'Parul Sevashram Hospital',
                     'HCG Hospitals, Bhavnagar', 'BIMS Multispeciality Hospital', 'SMVS Swaminarayan Hospital', 'Aashka Multispeciality Hospital', 'Oshwal Aayush Super Speciality Hospital',
                     'General Hospital Patan', 'Shree Giriraj Hospital', 'Unique Hospital', 'Kaneria Hospital'].map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectHspName = newValue;
                  });
                },
              ),
            ),

            SizedBox(height: 40,),
            
            ElevatedButton(
                onPressed: () {
              saveDonorDetails();
            }, style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('Submit', style: TextStyle(fontSize: 25),),
                ))
          ],
        ),
      ),
    );
  }
}
