import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Choice extends StatefulWidget{
  final String title;
   Choice({super.key, required this.title});
  @override
  State<Choice> createState() => _ChoiceState();
}
class _ChoiceState extends State<Choice> {
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