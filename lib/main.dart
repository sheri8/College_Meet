import 'package:flutter/material.dart';

import 'BottomNavigatonBar/Screens/Profile screens/Invite Friends/invite_friends.dart';

// import 'BottomNavigatonBar/Screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Invite_Friends()
        // Splash(),
        );
  }
}
