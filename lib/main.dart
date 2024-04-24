import 'package:flutter/material.dart';
import 'package:quizapp/ui/splashscreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home:SplashScreen(),
        debugShowCheckedModeBanner: false,
      );
  }

}