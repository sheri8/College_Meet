import 'package:college_meet/Screens/authphone/selectinterest.dart';
import 'package:college_meet/Screens/onboardingscreens/setname.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'continuephone.dart';

class VerifyPhone extends StatefulWidget {
  const VerifyPhone({Key? key}) : super(key: key);

  @override
  State<VerifyPhone> createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
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
                  MaterialPageRoute(builder: (context) => ContinuePhone()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xfffc6179),
            )),
        title: Text(
          "Verification",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 25),
                Text(
                  'Verify Phone Number',
                  // textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 14),
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      fieldHeight: 54,
                      fieldWidth: 56,
                      selectedFillColor: Colors.white,
                      selectedColor: Colors.red,
                      inactiveFillColor: Colors.white,
                      inactiveColor: Color(0xffE5E5E5),
                      activeFillColor: Colors.white),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.white,
                  enableActiveFill: true,
                  // errorAnimationController: errorController,
                  // controller: textEditingController,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      // currentText = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    'Enter the code sent to 401 60X - 5XXX',
                    style: TextStyle(fontSize: 12, color: Color(0xff8F8F8F)),
                  ),
                ),
                SizedBox(height: 60),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => SelectInterest()));
                      },
                      child: Text('Next'),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Color(0xfffc6179),
                          fixedSize: Size(330, 50))),
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
