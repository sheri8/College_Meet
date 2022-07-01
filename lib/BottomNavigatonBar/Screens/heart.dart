import 'package:flutter/material.dart';

class Heart extends StatelessWidget {
  const Heart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.redAccent,
              )),
          title: Text(
          'Match',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
              backgroundColor: Colors.white,
         actions: [
           Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 10),
                width: 50,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.redAccent,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 10),
                width: 50,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(
                  Icons.filter_none,
                  color: Colors.redAccent,
                )),
          ),
         ],
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                   
                          child: Image.asset('asset/girl-.jpg'),
                        ),
                      ),
                    ),
                                          Positioned(
                                            bottom: 20,
                                            left: 10,
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Column(
                                                children: [
                                                  Text('Jenifer, 21',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                                                   Text('Singer',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 16),),
                                                ],
                                              ),),
                                          )

                  ],
                );
              },
            ),
    );
  }
}
