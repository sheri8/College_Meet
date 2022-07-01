import 'package:college_meet/Screens/Profile_Screen/show_me.dart';
import 'package:college_meet/Screens/collge_university.dart';
import 'package:flutter/material.dart';

class Select_mode extends StatelessWidget {
  const Select_mode({Key? key}) : super(key: key);

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
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Mode',
              style: TextStyle(
                color: Colors.black,
                fontSize: 45,
              ),
            ),
            SizedBox(height: 80),
            Show_me().sexuality_person('FRIENDSHIP'),
            SizedBox(height: 10),
            Show_me().sexuality_person('RELATIONSHIP'),
            Spacer(),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => College_University()));
                    },
                    child: Text('CONTINUE'),
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
      ),
    );
  }
}
