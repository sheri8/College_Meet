import 'package:college_meet/Screens/onboardingscreens/sexuality.dart';
import 'package:college_meet/Screens/onboardingscreens/signupbirthday.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => SignUpBirthday()));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: PrimaryColor,
              )),
          title: Image.asset('assets/Logo.png', width: 105, height: 18),
          centerTitle: true,
        ),
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 25),
                  Text(
                    'Your Gender...',
                    // textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xffC70606), width: 2),
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFFE9E9)),
                        width: 140,
                        height: 181,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Man',
                              style: TextStyle(
                                  color: Color(0xffC70606),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              'assets/man.png',
                              width: 74,
                              height: 121,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffE3E3E3),
                        ),
                        width: 140,
                        height: 181,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Woman',
                              style: TextStyle(
                                  color: Color(0xff848484),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              'assets/woman.png',
                              width: 74,
                              height: 121,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffE3E3E3),
                        ),
                        width: 140,
                        height: 181,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Others',
                              style: TextStyle(
                                  color: Color(0xff848484),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              'assets/others.png',
                              width: 74,
                              height: 121,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sexuality()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8),
                          ),
                          primary: PrimaryColor,
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                  Spacer()
                ],
              ),
            )));
  }
}
