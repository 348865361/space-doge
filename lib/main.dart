import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> { double rocketlocation =400;
  @override
  Widget build(BuildContext context) {


    double imagesize = 100.0;
    String imagelocation = 'images/astroid.png';
    
    return Scaffold(
      appBar: AppBar(
        title: Text("space dodge"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'images/space background.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 40.0,
            bottom: 40.0,
            child: GestureDetector(
              onTap: (){

                print(rocketlocation);
                if (rocketlocation>20){
                  rocketlocation= rocketlocation-20;
                  setState(() {
                });

                }


              },
              child: Container(
                color: Colors.grey,
                child: Icon(
                  Icons.chevron_left,
                  size: 70.0,
                ),
              ),
            ),
          ),
          Positioned(
            right: 40.0,
            bottom: 40.0,
            child: GestureDetector(
              onTap: (){

                print(rocketlocation);
                if (rocketlocation<920) {
                  rocketlocation= rocketlocation+20;
                  setState(() {

                });
                }

              },
              child: Container(
                color: Colors.grey,
                child: Icon(
                  Icons.chevron_right,
                  size: 70.0,


                ),
              ),
            ),
          ),
          Positioned(
              top: 300,
              left: rocketlocation,
              child:Image.asset('images/Rocket.png',width: 100,height: 100,)
          ), Positioned(
              top: 110,
              left: 250,
              child:Image.asset(imagelocation,width: imagesize,height: imagesize,)
          ),Positioned(
              top: 270,
              left: 450,
              child:Image.asset(imagelocation,width: imagesize,height: imagesize,)
          ),Positioned(
              top: 80,
              left: 650,
              child:Image.asset(imagelocation,width: imagesize,height: imagesize,)
          ),Positioned(
              top: 300,
              left: 50,
              child:Image.asset(imagelocation,width: imagesize,height: imagesize,)
          ),Positioned(
              top: 200,
              left: 850,
              child:Image.asset(imagelocation,width: imagesize,height: imagesize,)
          ),
        ],
      ),
    );
  }
}
