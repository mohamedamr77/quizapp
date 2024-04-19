import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/TextCore.dart';
import '../../core/colorcore.dart';
import '../../core/fontcore.dart';

class CotainerAsAppBar extends StatelessWidget{

  final  String? text;
  CotainerAsAppBar({Key? key,required this.text}): super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen= MediaQuery.of(context).size.height;
    double widthScreen= MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Container(
        width: widthScreen,
        height:heightScreen*0.129,
        decoration: const BoxDecoration(
            color: ColorStatic.primaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            )
        ),
        child:  Center(
          child: Text(text??"",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: FontFamily.almaraiFont,
              color: ColorStatic.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }

}