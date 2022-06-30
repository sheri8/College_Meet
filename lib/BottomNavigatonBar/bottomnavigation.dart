import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/globalvariable.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  late PageController pageController;

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: homeScreenItems,
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
              icon: Container(
            height: 35,
            width: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.pink[50]),
            child: Icon(
              Icons.home,
              size: 22,
              color: Colors.redAccent,
              // if(_page == 0){
              // color: Colors.pink[50],}
              //   _page == 0
              //   Icons.
              // ?Icons.home, color: Colors
              // :
              // Image(
              //     image: AssetImage(_page == 0
              //         ? 'assets/Frame 1122.png'
              //         : "assets/Frame 11.png")),
            ),
          )
              // Image.asset('assets'),

              ),
          // backgroundColor: primaryColor,

          BottomNavigationBarItem(
            icon: Container(
              height: 35,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.pink[50]),
              child: Icon(
                Icons.fiber_dvr,
                size: 22,
                color: Colors.redAccent,
                // if(_page == 0){
                // color: Colors.pink[50],}
                //   _page == 0
                //   Icons.
                // ?Icons.home, color: Colors
                // :
                // Image(
                //     image: AssetImage(_page == 0
                //         ? 'assets/Frame 1122.png'
                //         : "assets/Frame 11.png")),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 35,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.pink[50]),
              child: Icon(
                Icons.heart_broken,
                size: 22,
                color: Colors.redAccent,
                // if(_page == 0){
                // color: Colors.pink[50],}
                //   _page == 0
                //   Icons.
                // ?Icons.home, color: Colors
                // :
                // Image(
                //     image: AssetImage(_page == 0
                //         ? 'assets/Frame 1122.png'
                //         : "assets/Frame 11.png")),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 35,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.pink[50]),
              child: Icon(
                Icons.message,
                size: 22,
                color: Colors.redAccent,
                // if(_page == 0){
                // color: Colors.pink[50],}
                //   _page == 0
                //   Icons.
                // ?Icons.home, color: Colors
                // :
                // Image(
                //     image: AssetImage(_page == 0
                //         ? 'assets/Frame 1122.png'
                //         : "assets/Frame 11.png")),
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 35,
              width: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.pink[50]),
              child: Icon(
                Icons.emoji_people,
                size: 22,
                color: Colors.redAccent,
                // if(_page == 0){
                // color: Colors.pink[50],}
                //   _page == 0
                //   Icons.
                // ?Icons.home, color: Colors
                // :
                // Image(
                //     image: AssetImage(_page == 0
                //         ? 'assets/Frame 1122.png'
                //         : "assets/Frame 11.png")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
