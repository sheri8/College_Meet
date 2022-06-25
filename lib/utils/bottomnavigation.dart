import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'globalvariable.dart';

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
              icon: Image(
                  image: AssetImage(_page == 0
                      ? 'assets/Frame 1122.png'
                      : "assets/Frame 11.png"))
              // Image.asset('assets'),

              ),
          // backgroundColor: primaryColor,

          BottomNavigationBarItem(
              icon: Image(
                  image: AssetImage(_page == 1
                      ? 'assets/Frame 1125.png'
                      : "assets/Frame 1121.png"))

              // icon: Icon(
              //   Icons.search,
              //   color: _page == 1 ? primaryColor : secondaryColor,
              // ),
              // label: '',
              // backgroundColor: primaryColor,
              ),
          BottomNavigationBarItem(
              icon: Image(
                  image: AssetImage(_page == 2
                      ? 'assets/Frame 1059.png'
                      : "assets/Frame 1055.png"))

              // icon: Icon(
              //   Icons.add_circle,
              //   color: _page == 2 ? primaryColor : secondaryColor,
              // ),
              // label: '',
              // backgroundColor: primaryColor,
              ),
          BottomNavigationBarItem(
              icon: Image(
                  image: AssetImage(_page == 3
                      ? 'assets/User_fill_1.png'
                      : "assets/User_fill.png"))

              // icon: Icon(
              //   Icons.favorite,
              //   color: _page == 3 ? primaryColor : secondaryColor,
              // ),
              // label: '',
              // backgroundColor: primaryColor,
              ),
        ],
      ),
    );
  }
}
