import 'package:flutter/cupertino.dart';
import '../core/TextCore.dart';
import '../core/colorcore.dart';

GestureDetector CheckAnswerButton({required void Function()? onTap}){
  return GestureDetector(
    onTap: onTap ,
    child: Container(
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
            color: ColorStatic.primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  );
}