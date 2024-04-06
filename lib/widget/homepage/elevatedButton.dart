import 'package:flutter/material.dart';
import '../../core/colorcore.dart';

ElevatedButton Button({required final void Function()? onPressed , required String text }){
  return ElevatedButton(
      onPressed: onPressed ,
      style: ElevatedButton.styleFrom(
          backgroundColor:  ColorStatic.primaryColor,
          minimumSize: const Size(110, 40),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          )
      ),
      child: Text(text)
  );
}