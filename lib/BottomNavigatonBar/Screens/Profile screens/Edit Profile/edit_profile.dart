import 'package:college_meet/BottomNavigatonBar/Screens/Edit%20Profile/signuppage.dart';
import 'package:flutter/material.dart';

class Edit_Profile extends StatelessWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.redAccent,
              )),
          title: Text(
            'Edit Profile',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: SignUpPage());
  }
}
