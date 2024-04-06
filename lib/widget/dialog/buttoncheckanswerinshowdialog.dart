import 'package:flutter/cupertino.dart';
import '../../core/TextCore.dart';
import '../../core/colorcore.dart';

class CheckAnswerButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 234,
      height: 40,
      decoration: BoxDecoration(
          color: ColorStatic.colorGroundContainerInShowDialog,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorStatic.primaryColor,
            width: 1,
          )
      ),
      child: const Center(
        child: Text(TextStatic.checkAnswerTextInShowDialog,
          style: TextStyle(
            fontFamily: "Almarai",
            color: ColorStatic.primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

}