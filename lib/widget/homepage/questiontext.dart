import 'package:flutter/material.dart';
import 'package:quizapp/core/fontcore.dart';
import '../../core/colorcore.dart';

class QuestionText extends StatelessWidget {
  final String text ;

   QuestionText({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      '''$text ''',
      textAlign: TextAlign.right,
      style: const TextStyle(
        color:  ColorApp.primaryColor,
        fontSize: 14,
        fontFamily: FontFamily.almaraiFont,
        fontWeight: FontWeight.w700,
        height: 2,
        //fontWeight: FontWeight.bold,
      ),
    );
  }
}
