import 'package:flutter/material.dart';

import '../core/TextCore.dart';
import '../core/colorcore.dart';
import '../ui/q1.dart';

class Dialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 25,
              bottom: 15,
            ),
            child: Container(
              height: 114,
              width: 234,
              decoration: BoxDecoration(
                  color: ColorStatic.colorGroundContainerInShowDialog,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorStatic.primaryColor,
                    width: 0.5,
                  )
              ),
              child:  const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(TextStatic.resultTextInShowDialog,
                    style: TextStyle(
                      color: ColorStatic.colorResultTextInShowDialog,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ) ,
                  Text("6/6",
                    style: TextStyle(
                      fontSize: 18,
                      color:ColorStatic.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Container(
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
          const SizedBox(height: 20,),
          GestureDetector(
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
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              pageNumber=1;
            },
          ),
        ],
      ),
    );
  }

}
