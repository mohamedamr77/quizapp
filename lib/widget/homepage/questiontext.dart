import 'package:flutter/material.dart';
import '../../core/colorcore.dart';

class QuestionText extends StatelessWidget {
  final String text ;
  const QuestionText({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      '''$text
         ''',
      textAlign: TextAlign.right,
      style: const TextStyle(
        color:  ColorStatic.primaryColor,
        fontSize: 14,
        fontFamily: "Almarai",
        fontWeight: FontWeight.w700
        //fontWeight: FontWeight.bold,
      ),
    );
  }
}
