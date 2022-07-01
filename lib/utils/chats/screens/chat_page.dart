import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    Key? key,
  }) : super(key: key);

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
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.pink[300],
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Icon(Icons.favorite_outline_rounded),
        ),
        title: Text(
          'Inbox',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 10),
                width: 50,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(
                  Icons.edit,
                  color: Colors.redAccent,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 10),
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(
                  Icons.more_vert_sharp,
                  color: Colors.redAccent,
                  // size: 15,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              AllChats(),
            ],
          ),
        
      ),
    );
  }
}
