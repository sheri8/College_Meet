import 'package:college_meet/widgets/backgroundwiget.dart';
import 'package:college_meet/widgets/cardsstackwidget.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.all(8),
          // padding: EdgeInsets.all(20),
          // margin: EdgeInsets.all(left: 10),
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.pink[300],
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Icon(Icons.favorite_outline_rounded),
        ),
        title: Text(
          'College Meet',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(8),
            // padding: EdgeInsets.all(20),
            // margin: EdgeInsets.all(left: 10),
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.pink[300],
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Icon(Icons.filter_9_plus_outlined),
          ),
        ],
      ),
      body:Column(children: [
          // BackgroudCurveWidget(),
            CardsStackWidget(),
      ],)
    );
  }
}
