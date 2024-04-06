import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/core/imagecore.dart';
import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
        seconds: 2
    ), () {

      Navigator.push(context, MaterialPageRoute(builder: (c) {
        return   HomeScreen();
      } ));

    }  ) ;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(ImageApp.upImage ,
              height: 256,
            ),
          ),
          Spacer(),

          ZoomIn(
            child: Center(
              child: Image.asset(ImageApp.logoImage ,
                height: 59 ,
                width: 231,
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(ImageApp.downImage,
              height: 256,

            ),
          ),

        ],
      ),
    );
  }
}