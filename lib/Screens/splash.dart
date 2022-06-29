import 'dart:async';

import 'package:college_meet/Screens/onboardingscreens/welcome.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Welcome())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text(
              'College Meet',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
            ),
            SizedBox(height: 30),
            Image.asset(
              'asset/splash.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset('asset/splash_loading.png'),
          ],
        ),
      ),
    );
  }
}
