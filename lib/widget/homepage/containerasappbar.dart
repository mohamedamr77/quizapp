import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/TextCore.dart';
import '../../core/colorcore.dart';
import '../../core/fontcore.dart';

class CotainerAsAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 375,
      height: 125,
      decoration: const BoxDecoration(
          color: ColorStatic.primaryColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )
      ),
      child: const Center(
        child: Text(TextStatic.appBarText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: FontFamily.almaraiFont,
            color: ColorStatic.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

}