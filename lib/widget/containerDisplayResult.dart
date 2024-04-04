import 'package:flutter/cupertino.dart';
import '../core/TextCore.dart';
import '../core/colorcore.dart';

class DisplayScoer extends StatelessWidget{
  const DisplayScoer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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

            Text("4/4",
              style: TextStyle(
                fontSize: 18,
                color:ColorStatic.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

}