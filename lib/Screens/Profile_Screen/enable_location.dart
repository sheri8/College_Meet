import 'package:college_meet/Screens/Profile_Screen/best_photo.dart';
import 'package:flutter/material.dart';

class Enable_location extends StatelessWidget {
  const Enable_location({Key? key}) : super(key: key);

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
              Icons.arrow_back_ios,
              color: Colors.grey,
            )),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.pink),
              ))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Color.fromARGB(255, 202, 201, 201),
              child: Icon(
                Icons.location_on,
                color: Colors.white,
                size: 80,
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'Enable Location',
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'You need to provide a \nlocation\nin order to search users around you',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          Spacer(),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => Best_Photo()));
                  },
                  child: Text('ALLOW LOCATION'),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Color(0xfffc6179),
                      fixedSize: Size(260, 50))),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
