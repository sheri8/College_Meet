import 'package:college_meet/Screens/Profile_Screen/show_me.dart';
import 'package:flutter/material.dart';

class Sexual_Orientation extends StatefulWidget {
  const Sexual_Orientation({Key? key}) : super(key: key);

  @override
  State<Sexual_Orientation> createState() => _Sexual_OrientationState();
}

class _Sexual_OrientationState extends State<Sexual_Orientation> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.grey;
      }
      return Colors.grey;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My sexual orientation is ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 45,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Select upto 3',
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                  height: 45,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                    child: Text(
                      'Straight',
                      style: TextStyle(
                          color: Colors.pink[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )),
            ),
            SizedBox(height: 10),
            sexuality('Gay'),
            SizedBox(height: 10),
            sexuality('Asexual'),
            SizedBox(height: 10),
            sexuality('Lesbian'),
            SizedBox(height: 10),
            sexuality('Bisexual'),
            SizedBox(height: 10),
            sexuality('Demisexual'),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                SizedBox(width: 20),
                Text(
                  'Show my orientation on my profile',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Show_me()));
                    },
                    child: Text('CONTINUE'),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: Color(0xfffc6179),
                        fixedSize: Size(260, 50))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Center sexuality(String text) {
    return Center(
      child: Container(
          height: 45,
          width: 200,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          )),
    );
  }
}
