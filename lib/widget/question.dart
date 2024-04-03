import 'package:flutter/cupertino.dart';

import '../cool/colorcool.dart';

Text QuestionText({required String text}){
  return Text(
'''${text}
         ''',
textAlign: TextAlign.right,
style: TextStyle(
color:  ColorStatic.primaryColor,
fontSize: 14,
fontWeight: FontWeight.bold,
),
);
}