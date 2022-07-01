import 'package:college_meet/BottomNavigatonBar/Screens/home.dart';
import 'package:college_meet/Screens/splash.dart';
import 'package:flutter/material.dart';

// import 'BottomNavigatonBar/Screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      // Home_Screen()
    );
  }
}
