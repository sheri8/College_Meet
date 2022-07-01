import 'package:college_meet/Screens/Profile_Screen/select_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Show_me extends StatelessWidget {
  const Show_me({Key? key}) : super(key: key);

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
              'Show me',
              style: TextStyle(
                color: Colors.black,
                fontSize: 45,
              ),
            ),
            SizedBox(height: 60),
            sexuality_person('MEN'),
            SizedBox(height: 10),
            sexuality_person('WOMEN'),
            SizedBox(height: 10),
            sexuality_person('EVERYONE'),
            Spacer(),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => Select_mode()));
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

  Center sexuality_person(String text) {
    return Center(
      child: Container(
          height: 55,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )),
    );
  }
}
