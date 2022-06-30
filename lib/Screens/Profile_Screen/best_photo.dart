import 'package:college_meet/Screens/Profile_Screen/ideal_match.dart';
import 'package:college_meet/Screens/collge_university.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Best_Photo extends StatelessWidget {
  const Best_Photo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => College_University()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xfffc6179),
            )),
        title: Text(
          'Add Your Best Photos',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Add your best photo to get a higher amount of daily matches',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 220,
                  width: 150,
                  decoration: BoxDecoration(
                      // shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "asset/female.png",
                        ),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
                DottedBorder(
                  color: Colors.pink,
                  // borderType: BorderType.RRect,
                  strokeWidth: 1,
                  // dashPattern: [6, 3, 2, 3],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  // padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                        height: 220,
                        width: 150,
                        color: Colors.pink.shade200,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add, color: Colors.white))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DottedBorder(
                  color: Colors.pink,
                  // borderType: BorderType.RRect,
                  strokeWidth: 1,
                  // dashPattern: [6, 3, 2, 3],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  // padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                        height: 220,
                        width: 150,
                        color: Colors.pink.shade200,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add, color: Colors.white))),
                  ),
                ),
                DottedBorder(
                  color: Colors.pink,
                  // borderType: BorderType.RRect,
                  strokeWidth: 1,
                  // dashPattern: [6, 3, 2, 3],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  // padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                        height: 220,
                        width: 150,
                        color: Colors.pink.shade200,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add, color: Colors.white))),
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => Ideal_Match()));
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color(0xfffc6179),
                    // fixedSize: Size(300, 50)
                  )),
            ),
            // SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
