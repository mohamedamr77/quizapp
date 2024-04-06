import 'package:flutter/material.dart';
import '../../core/fontcore.dart';

class RadioChoice extends StatefulWidget{

   String textChoice;
   dynamic groupValue;
   dynamic valueRdio;
   void Function(dynamic)? onChanged;

   RadioChoice({super.key,required this.textChoice,required this.groupValue,required this.valueRdio,required this.onChanged });
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
          onChanged: widget.onChanged,
        ),
        Text(widget.textChoice,

        style: const TextStyle(
          fontFamily:FontFamily.almaraiFont,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        ),
      ],
    );
  }
}