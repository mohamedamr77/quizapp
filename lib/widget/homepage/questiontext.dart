import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/core/fontcore.dart';
import '../../core/colorcore.dart';

class QuestionText extends StatelessWidget {
  final String text ;

   QuestionText({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      child: Text(
        '''$text
           ''',
        textAlign: TextAlign.right,
        style: const TextStyle(
          color:  ColorStatic.primaryColor,
          fontSize: 14,
          fontFamily: FontFamily.almaraiFont,
          fontWeight: FontWeight.w700
          //fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
