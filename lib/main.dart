import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/ui/q1.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Question1(),
        debugShowCheckedModeBanner: false,
      );
  }

}