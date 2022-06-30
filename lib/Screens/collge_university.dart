import 'package:college_meet/Screens/Profile_Screen/best_photo.dart';
import 'package:flutter/material.dart';

class College_University extends StatelessWidget {
  const College_University({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'My College \nUniversity is',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
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
    return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
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
                              builder: (builder) => Best_Photo()));
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
