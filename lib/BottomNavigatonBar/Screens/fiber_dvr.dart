import 'package:flutter/material.dart';

class Fiber_dev extends StatelessWidget {
  const Fiber_dev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(
              height: 60,
            ),
           
                
           
                  Center(child: Image.asset('asset/images.png')),
               
          
            SizedBox(
              height: 60,
            ),
             Center(child: Text("It's a Matched",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pinkAccent,fontSize: 30,fontStyle: FontStyle.italic),textAlign: TextAlign.center,)),
            
              SizedBox(
              height: 20,
            ),
              Center(child: Text("Dont'keep them waiting , say hello!",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey,fontSize: 15,),textAlign: TextAlign.center,)),
            
              SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 56,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => SetName()));
                  },
                  
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30),
                    ),
                    
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  child: Text(
                    'Say Hello',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )),
            ),
            SizedBox(height: 10),
             Container(
              width: double.infinity,
              height: 56,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => SetName()));
                  },
                  
                  style: OutlinedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30),
                    ),
                    
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  child: Text(
                    'Keep Swipping',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.w600),
                  )),
            ),
           
            Spacer()
          ],
        ),
      ),
    );
  }
}
