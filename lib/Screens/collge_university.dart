import 'package:college_meet/Screens/Profile_Screen/best_photo.dart';
import 'package:college_meet/Screens/Profile_Screen/enable_location.dart';
import 'package:flutter/material.dart';

class College_University extends StatelessWidget {
  const College_University({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My College \nUniversity is',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 45,
                ),
              ),
              Spacer(),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Enter University or College Name',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => Enable_location()));
                    },
                    child: Text('Continue'),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Color(0xfffc6179),
                      // fixedSize: Size(300, 50)
                    )),
              ),
              SizedBox(height: 10),
              Text(
                'My College/University is not listed above',
                style: TextStyle(
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ));
  }
}
