import 'dart:typed_data';

import 'package:college_meet/Screens/collge_university.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

import 'scroll_ijector.dart';

class BrandSelectScreen extends StatefulWidget {
  const BrandSelectScreen({Key? key}) : super(key: key);

  @override
  State<BrandSelectScreen> createState() => _BrandSelectScreenState();
}

class _BrandSelectScreenState extends State<BrandSelectScreen> {
  String? brand;
  String? carrier;
  String? price;
  Uint8List? _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Consider as brands

        SizedBox(
          height: 10,
        ),

        GroupButton(
          isRadio: false,
          buttons: [
            'Gaming',
            'Dancing',
            'Language',
            'Music',
            'Movie',
            'Photography',
            'Architecture',
            'Fashion',
            'Book',
            'Writing',
            'Nature',
            'Painting',
            'Football',
            'People',
            'Animals',
            'Gym & fitness',
            'Food & Drink',
            'Travel & Places'
          ],
          options: GroupButtonOptions(
              spacing: 10,
              selectedTextStyle: TextStyle(color: Colors.white, fontSize: 20),
              unselectedTextStyle: TextStyle(
                  color: Color.fromARGB(
                    255,
                    255,
                    105,
                    122,
                  ),
                  fontSize: 20),
              unselectedBorderColor: Color.fromARGB(255, 255, 105, 122),
              borderRadius: BorderRadius.circular(20),
              selectedColor: Color.fromARGB(255, 255, 105, 122)),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => College_University()));
              },
              child: Text('Next'),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Color(0xfffc6179),
                  fixedSize: Size(330, 50))),
        ),
      ],
    );
  }
}
