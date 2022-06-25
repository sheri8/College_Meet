import 'package:college_meet/Screens/onboardingscreens/gender.dart';
import 'package:college_meet/Screens/onboardingscreens/setname.dart';
import 'package:college_meet/Screens/onboardingscreens/signupbirthday.dart';
import 'package:college_meet/Screens/onboardingscreens/verifyphone.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'continuephone.dart';
import 'sexuality.dart';

class OnBoardingScreens extends StatefulWidget {
  @override
  _OnBoardingScreensState createState() => _OnBoardingScreensState();
}

int currentPage = 0;

final _controller = PageController(initialPage: 0);
List<Widget> _pages = [
  Column(children: [Expanded(child: ContinuePhone())]),
  Column(children: [Expanded(child: VerifyPhone())]),
  Column(children: [
    Expanded(child: SetName()),
  ]),
  Column(
    children: [
      Expanded(
        child: SignUpBirthday(),
      ),
    ],
  ),
  Column(
    children: [
      Expanded(
        child: Gender(),
      ),
    ],
  ),
  Column(
    children: [
      Expanded(
        child: Sexuality(),
      ),
    ],
  ),
];

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  @override
  Widget build(BuildContext context) {
    //  Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: _pages,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
          DotsIndicator(
            dotsCount: _pages.length,
            position: currentPage.toDouble(),
            decorator: DotsDecorator(
              color: Color(0xffE0E0E0), // Inactive color
              activeColor: Color(0xffC70606),
            ),
          ),
        ],
      ),
    );
  }
}
