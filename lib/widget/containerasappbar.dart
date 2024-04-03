import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cool/colorcool.dart';

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
        child: Text(
          "Quiz App",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorStatic.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

}