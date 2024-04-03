import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RadioChoice extends StatefulWidget{
  String text;
   RadioChoice({super.key,required this.text});
  @override
  State<RadioChoice> createState() => _RadioChoiceState();
}
class _RadioChoiceState extends State<RadioChoice> {
  int _value=0;

  @override
  Widget build(BuildContext context) {
    return  Row(
      textDirection: TextDirection.rtl,
      children: [
        Radio(
          value: 1,
          groupValue: _value,
          onChanged:(value){
            setState(() {
              _value=value!;
            });
          },
        ),
        Text(widget.text),
      ],
    );
  }
}