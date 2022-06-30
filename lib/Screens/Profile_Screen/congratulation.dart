import 'package:college_meet/BottomNavigatonBar/Screens/mainscreen.dart';
import 'package:college_meet/BottomNavigatonBar/bottomnavigation.dart';
import 'package:flutter/material.dart';

class Congratulation extends StatelessWidget {
  const Congratulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Center(child: Image.asset('asset/splash.png')),
              Text('Congratulations!',
                  style: TextStyle(
                      color: Colors.pink[400],
                      fontWeight: FontWeight.bold,
                      fontSize: 26)),
              SizedBox(
                height: 20,
              ),
              Text('Your account is ready to use',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 14)),
              SizedBox(
                height: 160,
              ),
              // Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => MobileScreenLayout()));
                    },
                    child: Text('Go to Home Page'),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Color(0xfffc6179),
                      // fixedSize: Size(300, 50)
                    )),
              ),
            ],
          ),
        ));
  }
}
