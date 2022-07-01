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
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ClipRRect(
          //     borderRadius: BorderRadius.all(Radius.circular(30)),
          //     child: Image.asset(
          //       'asset/female.png',
          //       // height: 200,
          //       width: 350,
          //     )),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(28),
          //   child: Image.asset(
          //     'asset/kuri.jpg',
          //     width: 400,
          //     height: 500,
          //     // height: MediaQuery.of(context).size.height * 0.7,
          //     // width: 1000,
          //   ),
          // ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    child: Image.asset(
                      'asset/girl-.jpg',
                      fit: BoxFit.cover,
                      height: 300,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 10,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Text(
                        'Jenifer, 21',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Singer',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    // margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.pink[100],
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Icon(
                      Icons.clear,
                      color: Colors.redAccent,
                      // size: 15,
                    )),
                SizedBox(
                  width: 50,
                ),
                Container(
                    // margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      // size: 15,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
