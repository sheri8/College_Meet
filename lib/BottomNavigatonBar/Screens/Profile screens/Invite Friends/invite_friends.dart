import 'package:college_meet/BottomNavigatonBar/Screens/Profile%20screens/Invite%20Friends/list_view.dart';
import 'package:flutter/material.dart';

class Invite_Friends extends StatelessWidget {
  const Invite_Friends({Key? key}) : super(key: key);

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
          'Invite Friends',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemBuilder: ((context, index) => List_View1()),
          itemCount: 10,
        ),
      ),
    );
  }
}
