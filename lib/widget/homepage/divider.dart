import 'package:flutter/material.dart';
import 'dart:ui';
import '../../core/colorcore.dart';

class DividerLine extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return   const Divider(
    color: ColorStatic.primaryColor ,
    endIndent: 52,
    indent: 52,
    );
  }

}