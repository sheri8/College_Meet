// import 'package:firebase_auth/firebase_auth.dart';

import 'package:college_meet/BottomNavigatonBar/Screens/fiber_dvr.dart';
import 'package:college_meet/BottomNavigatonBar/Screens/heart.dart';
import 'package:college_meet/BottomNavigatonBar/Screens/home.dart';
import 'package:college_meet/BottomNavigatonBar/Screens/profile.dart';
import 'package:college_meet/utils/chats/screens/chat_page.dart';

import 'package:flutter/material.dart';
// import 'package:instagram/screens/add_post_screen.dart';
// import 'package:instagram/screens/feed_screen.dart';
// import 'package:instagram/screens/profile_screen.dart';
// import 'package:instagram/screens/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  Home_Screen(),
  Fiber_dev(),
  Heart(),
  ChatPage(),
  Profile()
  //  Random(),
  //  ChatPage(),
  //  Profile(),
];
