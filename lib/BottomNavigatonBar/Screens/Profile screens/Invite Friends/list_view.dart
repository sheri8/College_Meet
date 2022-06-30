import 'package:flutter/material.dart';

class List_View1 extends StatelessWidget {
  const List_View1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          'asset/female.png',
        ),
        title: Text(
          'Esther Howerd',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '+52-434-2342-21',
          style: TextStyle(
              color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        trailing: Container(
          height: 30,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: Colors.redAccent, width: 1)),
          child: Center(
            child: Text(
              'Invite',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
