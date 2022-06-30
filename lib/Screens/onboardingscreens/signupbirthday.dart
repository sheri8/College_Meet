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
    return  Scaffold(
      backgroundColor: Colors.white,
     
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              SizedBox(height: 21),
           Center(
               child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:  Image.asset('asset/kiss.png')),
             ),
               
             
           SizedBox(height: 61),
         Center(
           child: RichText(
            textAlign: TextAlign.center,
  text: TextSpan(
    text: 'Easily ',
    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),
    children: const <TextSpan>[
      TextSpan(text: ' message & call ', 
            style: TextStyle(color: Color.fromARGB(255, 255, 105, 122),fontWeight: FontWeight.w600,fontSize: 20),
),
 TextSpan(text: 'the',
    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20,),
      ),
      TextSpan(text: '\n people you like',
    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20,),
      ),
    ],
  
  

                 ),
               ),
         ),
            
              SizedBox(
                height: 20,
              ),
              
            
            
            ],
          ),
        ),
      ),
    );
  }
}
