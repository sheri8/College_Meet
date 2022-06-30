import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _refreralController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Uint8List? _image;

  bool _isLoading = false;
  var items = [
    'Male',
    'Female',
  ];
  String dropdownvalue = 'Male';
  var age = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
    '32',
    '33',
    '34',
    '35',
    '36',
    '37',
    '38',
    '39',
    '40'
  ];

  String dropdownage = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Full Name',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                // Center(
                //   child: Stack(
                //     children: [
                //       _image != null
                //           ? CircleAvatar(
                //               radius: 62,
                //               child: CircleAvatar(
                //                 radius: 60,
                //                 backgroundImage: MemoryImage(_image!),
                //               ),
                //             )
                //           : CircleAvatar(
                //               radius: 60,
                //               backgroundImage: AssetImage(
                //                 'assets/person.png',
                //               ),
                //             ),
                //       // Positioned(
                //       //   bottom: -5,
                //       //   left: 80,
                //       //   child: IconButton(
                //       //     onPressed: () {
                //       //       _selectImage();
                //       //     },
                //       //     icon: const Icon(
                //       //       Icons.add_a_photo,
                //       //       size: 25,
                //       //       color: Colors.white,
                //       //     ),
                //       //   ),
                //       // )
                //     ],
                //   ),
                // ),
                Container(

                    // height: 60,
                    margin: EdgeInsets.only(top: 10),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(30),
                        border: Border.all(color: Colors.redAccent)),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      validator: (v) {
                        if (v!.isEmpty) {
                          return " Please Enter username..\ ";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: 'Adam Smith',
                        contentPadding: EdgeInsets.only(left: 20),
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.getFont('Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8D8989),
                            fontSize: 15,
                            fontStyle: FontStyle.normal),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Email',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(

                    // height: 60,
                    margin: EdgeInsets.only(top: 10),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(30),
                        border: Border.all(color: Colors.redAccent)),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      // //  textAlign: TextAlign.start,
                      // controller: _usernameController,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return " Please Enter username..\ ";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.message),
                        hintText: 'adam.smith@yourdomain.com',
                        contentPadding: EdgeInsets.only(left: 20, top: 15),
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.getFont('Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8D8989),
                            fontSize: 15,
                            fontStyle: FontStyle.normal),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Phone Number',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(

                    // height: 60,
                    margin: EdgeInsets.only(top: 10),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(30),
                        border: Border.all(color: Colors.redAccent)),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      // controller: _usernameController,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return " Please Enter username..\ ";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.phone),
                        hintText: '+628562314215973',
                        contentPadding: EdgeInsets.only(left: 20, top: 15),
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.getFont('Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8D8989),
                            fontSize: 15,
                            fontStyle: FontStyle.normal),
                      ),
                    )),
                SizedBox(height: 20),
                Row(
                  children: [
                    // Text(
                    //   'Gender',
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(color: Color(0xff535353)),
                    // ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Gender',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.redAccent)),
                            // margin: EdgeInsets.only(left: 25, right: 15),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: SizedBox(),
                                // Initial Value
                                value: dropdownvalue,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Age',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.redAccent)),
                            // margin: EdgeInsets.only(left: 15, right: 15),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: SizedBox(),
                                // Initial Value
                                value: dropdownage,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: age.map((String age) {
                                  return DropdownMenuItem(
                                      value: age, child: Text(age));
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownage = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'About',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(

                    // height: 60,
                    margin: EdgeInsets.only(top: 10),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(30),
                        border: Border.all(color: Colors.redAccent)),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      controller: _usernameController,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return " Please Enter username..\ ";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        hintText:
                            'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups',
                        contentPadding: EdgeInsets.only(left: 20),
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.getFont('Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8D8989),
                            fontSize: 15,
                            fontStyle: FontStyle.normal),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Interest',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(

                    // height: 60,
                    margin: EdgeInsets.only(top: 10),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(30),
                        border: Border.all(color: Colors.redAccent)),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      // controller: _usernameController,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return " Please Enter username..\ ";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.edit),
                        hintText: 'Art, Music, Movie etc',
                        contentPadding: EdgeInsets.only(left: 20, top: 15),
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.getFont('Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8D8989),
                            fontSize: 15,
                            fontStyle: FontStyle.normal),
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Address',
                    style: GoogleFonts.getFont(
                      'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(

                    // height: 60,
                    margin: EdgeInsets.only(top: 10),

                    //  padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.circular(30),
                        border: Border.all(color: Colors.redAccent)),
                    // border: Border.all(color: Colors.grey,width: 0.5)

                    child: TextFormField(
                      //  textAlign: TextAlign.start,
                      // controller: _usernameController,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return " Please Enter username..\ ";
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.location_on),
                        hintText: 'Los Angles',
                        contentPadding: EdgeInsets.only(left: 20, top: 15),
                        border: InputBorder.none,
                        hintStyle: GoogleFonts.getFont('Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8D8989),
                            fontSize: 15,
                            fontStyle: FontStyle.normal),
                      ),
                    )),

                SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffEB5757),
                      fixedSize: const Size(350, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    ),
                    onPressed: () {},
                    child: _isLoading == true
                        ? const Center(
                            child: CircularProgressIndicator.adaptive(),
                          )
                        : Text(
                            'Save Changes',
                            style: GoogleFonts.getFont('Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 15,
                                fontStyle: FontStyle.normal),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
