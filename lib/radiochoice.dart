import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rooooo extends StatefulWidget{
  final String title;
  rooooo({required this.title});
  @override
  State<rooooo> createState() => _roooooState();
}

class _roooooState extends State<rooooo> {
  int _value=0;
  int score=0;
  @override
  Widget build(BuildContext context) {
    return   Row (
      textDirection: TextDirection.rtl,
      children: [
        Radio(
          value: 2,
          groupValue: _value,
          onChanged:(value){
            setState(() {
              _value=value!;
            });
            if(_value==value){
              score++;
            }
          },
        ),
        Text(widget.title),
      ],
    );






  }
}