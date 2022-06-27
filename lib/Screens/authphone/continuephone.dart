import 'package:college_meet/Screens/authphone/verifyphone.dart';
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
      
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
                height: 51,
              ),
              Text(
                'Add your phone number we will send you verification code as a via you are real',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 51,
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
              
              
              SizedBox(height: 40),

              Spacer(),
              Spacer(),
              Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (builder) => VerifyPhone()));
          }, child: Text('Send OTP'),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: Color(0xfffc6179),
            fixedSize: Size(330, 50)
          )),
        ),
         Center(
           child: RichText(
            textAlign: TextAlign.center,
  text: TextSpan(
    text: 'By providing good services, so\n',
    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),
    children: const <TextSpan>[
      TextSpan(text:' Please accept', 
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),
),
TextSpan(text:' terms & conditions ', 
            style: TextStyle(color: Color.fromARGB(255, 255, 105, 122),fontWeight: FontWeight.w600,fontSize: 20),
),
      TextSpan(text: 'and',
    style: TextStyle(color: Colors.black,fontSize: 20,),
      ),
      TextSpan(text:' privacy policy', 
            style: TextStyle(color: Color.fromARGB(255, 255, 105, 122),fontWeight: FontWeight.w600,fontSize: 20),
),
    ],
  
  

                 ),
               ),
         ),
              
            ],
          ),
        ),
      ),
    );
  }
}
