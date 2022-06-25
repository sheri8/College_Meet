import 'package:college_meet/Screens/onboardingscreens/verifyphone.dart';
import 'package:college_meet/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:phone_form_field/phone_form_field.dart';

class ContinuePhone extends StatelessWidget {
  const ContinuePhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PhoneController controller;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              // Navigator.pop(context,
              //     MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: PrimaryColor,
            )),
        title: Image.asset('assets/Logo.png', width: 105, height: 18),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25),
              Text(
                'Enter Phone Number',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 21,
              ),
              PhoneFormField(
                key: Key('phone-field'),
                shouldFormat: true, // default
                decoration: InputDecoration(
                    hintText: "Enter Phone Number",
                    border:
                        OutlineInputBorder() // default to UnderlineInputBorder(),
                    // ...
                    ),
                validator: PhoneValidator
                    .validMobile(), // default PhoneValidator.valid()
                countrySelectorNavigator:
                    CountrySelectorNavigator.bottomSheet(),
                showFlagInInput: true, // default
                flagSize: 16, // default
                autofillHints: [
                  AutofillHints.telephoneNumber
                ], // default to null
                enabled: true, // default
                autofocus: false, // default
                autovalidateMode: AutovalidateMode.onUserInteraction, // default
                onChanged: (p) => print('changed $p'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet in sit tristique purus proin amet tortor. Quamed parturient orci nibh. Tortor diame adipiscing ac, proin neque. Neque ornare sit tristique',
                style: TextStyle(
                    color: Color(0xff8F8F8F),
                    fontSize: 11,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyPhone()));
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
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
