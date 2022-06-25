import 'package:college_meet/Screens/onboardingscreens/gender.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class Sexuality extends StatelessWidget {
  const Sexuality({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => Gender()));
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
                'I am a...',
                // textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffC70606), width: 2),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFE9E9)),
                    width: 140,
                    height: 181,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hetero',
                          style: TextStyle(
                              color: Color(0xffC70606),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/het.png',
                          width: 74,
                          height: 121,
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lesbian',
                          style: TextStyle(
                              color: Color(0xff848484),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/les.png',
                          width: 74,
                          height: 121,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffE3E3E3),
                    ),
                    width: 140,
                    height: 181,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Gay',
                          style: TextStyle(
                              color: Color(0xff848484),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/gay.png',
                          width: 74,
                          height: 121,
                        ),
                        SizedBox(
                          height: 10,
                        ),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bisexual',
                          style: TextStyle(
                              color: Color(0xff848484),
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/bi.png',
                          width: 74,
                          height: 121,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Payment()));
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
        ),
      ),
    );
  }
}
