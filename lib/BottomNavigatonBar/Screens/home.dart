import 'dart:html';

import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.all(8),
          // padding: EdgeInsets.all(20),
          // margin: EdgeInsets.all(left: 10),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.pink[300],
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Icon(Icons.warning_amber),
        ),
        title: Text(
          'Match',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.pinkAccent[100],
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.filter_1)),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                'All Match',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )
            ],
          )
        ],
      ),
    );
  }
}
