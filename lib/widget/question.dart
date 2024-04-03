import 'package:flutter/cupertino.dart';

Text QuestionText({required String text}){
  return Text(
'''${text}
         ''',
textAlign: TextAlign.right,
style: TextStyle(
color: Color(0xff006672),
fontSize: 14,
fontWeight: FontWeight.bold,
),
);
}