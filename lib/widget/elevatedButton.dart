import 'package:flutter/material.dart';

ElevatedButton Button({required final void Function()? onPressed , required String text }){
  return ElevatedButton(
      onPressed:onPressed ,
      child: Text(text),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff006672),
          minimumSize: Size(110, 40),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          )
      )
  );
}