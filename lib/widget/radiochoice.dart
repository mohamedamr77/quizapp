import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RadioChoice extends StatefulWidget{
  String text;
  int groupValue;
  int valueRdio;
   RadioChoice({super.key,required this.text,required this.groupValue,required this.valueRdio });
  @override
  State<RadioChoice> createState() => _RadioChoiceState();
}
class _RadioChoiceState extends State<RadioChoice> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      textDirection: TextDirection.rtl,
      children: [
        Radio(
          value: widget.valueRdio,
          groupValue: widget.groupValue,
          onChanged:(value){
            setState(() {
              widget.groupValue=value!;
            });
          },
        ),
        Text(widget.text),
      ],
    );
  }
}