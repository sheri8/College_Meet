import 'package:college_meet/Screens/onboardingscreens/gender.dart';
import 'package:college_meet/Screens/onboardingscreens/setname.dart';
import 'package:flutter/material.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

import '../../utils/color.dart';

class SignUpBirthday extends StatelessWidget {
  const SignUpBirthday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime _selectedDate = DateTime.now();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (context) => SetName()));
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
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25),
              Text(
                'What’s your birthday?',
                // textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 11),
              Text(
                'Your birthday won’t be visible to \nothers',
                style: TextStyle(fontSize: 15, color: Color(0xffBDBDBD)),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  width: 299,
                  height: 250,
                  child: ScrollDatePicker(
                    style: DatePickerStyle(
                        selectedTextStyle: TextStyle(color: Colors.black)),
                    selectedDate: _selectedDate,
                    locale: DatePickerLocale.enUS,
                    onDateTimeChanged: (DateTime value) {
                      // setState(() {
                      //   _selectedDate = value;
                      // });
                    },
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Text(
                  'Age 21',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 33),
              Container(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Gender()));
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
