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
                child:  Image.asset('asset/female.png',)),
             ),
           SizedBox(height: 61),
               
             
          
         Center(
           child: RichText(
            textAlign: TextAlign.center,
  text: TextSpan(
    text: 'Don''t wait any more, find \n',
    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),
    children: const <TextSpan>[
      TextSpan(text: ' out your ', 
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),
),
 TextSpan(text: 'soul mate',
    style: TextStyle(color: Color.fromARGB(255, 255, 105, 122),fontWeight: FontWeight.w600,fontSize: 20,),
      ),
      TextSpan(text: ' now',
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
