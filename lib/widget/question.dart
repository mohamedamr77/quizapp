import 'package:flutter/cupertino.dart';
import '../core/colorcore.dart';

Text QuestionText({required String text}){
  return Text(
'''${text}
         ''',
textAlign: TextAlign.right,
style: const TextStyle(
color:  ColorStatic.primaryColor,
fontSize: 14,
fontWeight: FontWeight.bold,
),
);
}