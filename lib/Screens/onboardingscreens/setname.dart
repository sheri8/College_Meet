import 'package:college_meet/Screens/onboardingscreens/signupbirthday.dart';
import 'package:college_meet/Screens/onboardingscreens/verifyphone.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class SetName extends StatefulWidget {
  const SetName({Key? key}) : super(key: key);

  @override
  State<SetName> createState() => _SetNameState();
}

class _SetNameState extends State<SetName> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    // Color getColor(Set<MaterialState> states) {
    //   const Set<MaterialState> interactiveStates = <MaterialState>{
    //     MaterialState.pressed,
    //     MaterialState.hovered,
    //     MaterialState.focused,
    //   };
    //   if (states.any(interactiveStates.contains)) {
    //     return Colors.red;
    //   }
    //   return Colors.red;
    // }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => VerifyPhone()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: PrimaryColor,
            )),
        title: Image.asset('assets/Logo.png', width: 105, height: 18),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25),
              Text(
                'What’s your name?',
                // textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 11),
              Text(
                'Enter the code sent to 401 60X - 5XXX',
                style: TextStyle(fontSize: 12, color: Color(0xff8F8F8F)),
              ),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 5,
                          color: Color(0xffC70606),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    // enabledBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(8),
                    //     borderSide: BorderSide(color: PrimaryColor)),
                    fillColor: PrimaryColor,
                    hintText: 'Enter your first name',
                    // border: new OutlineInputBorder(
                    //   borderRadius: new BorderRadius.circular(8),
                    //   borderSide: new BorderSide(color: Colors.red, width: 5),
                    // ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: PrimaryColor,
                    focusColor: PrimaryColor,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  SizedBox(width: 6),
                  Text(
                    'Show my name on my profile',
                    style: TextStyle(fontSize: 13, color: Color(0xff5F5F5F)),
                  )
                ],
              ),
              SizedBox(height: 68),
              Container(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpBirthday()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(8),
                      ),
                      primary: PrimaryColor,
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
