import 'package:flutter/cupertino.dart';
import '../core/TextCore.dart';
import '../core/colorcore.dart';

GestureDetector RepetitionAnswerButton({required void Function()? onTap }){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 234,
      height: 40,
      decoration: BoxDecoration(
          color: ColorStatic.primaryColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color:  ColorStatic.primaryColor,
            width: 1,
          )
      ),
      child: const Center(
        child: Text(TextStatic.examREPETITONTextInShowDialog,
          style: TextStyle(
            color: ColorStatic.white,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  );
}