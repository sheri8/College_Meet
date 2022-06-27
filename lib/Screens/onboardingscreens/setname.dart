import 'package:college_meet/Screens/onboardingscreens/signupbirthday.dart';
import 'package:college_meet/Screens/authphone/verifyphone.dart';
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
                child:  Image.asset('asset/female.png')),
             ),
           SizedBox(height: 61),
         Center(
           child: RichText(
            textAlign: TextAlign.center,
  text: TextSpan(
    text: 'Find people who',
    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),
    children: const <TextSpan>[
      TextSpan(text:' match', 
            style: TextStyle(color: Color.fromARGB(255, 255, 105, 122),fontWeight: FontWeight.w600,fontSize: 20),
),
      TextSpan(text: '\nwith you',
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
