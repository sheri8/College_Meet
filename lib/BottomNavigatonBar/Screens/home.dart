import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: Colors.white,
      
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Hello',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w700, fontSize: 13),
              ),
              Text(
                'Alex',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600, fontSize: 12),
              ),
            ],
          ),
        ),
        actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('asset/girl-.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon( Icons.more_vert_sharp,color: Colors.pinkAccent,),
        )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Container(
            margin: EdgeInsets.only(left: 30,right: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
              child: Image.asset('asset/girl-.jpg',width: 300,)),
          ),
SizedBox(height: 20,),
          Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 10),

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
                  SizedBox(width: 50,),
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
