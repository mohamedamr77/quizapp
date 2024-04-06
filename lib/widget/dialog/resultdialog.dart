import 'package:flutter/material.dart';
import '../../core/TextCore.dart';
import '../../core/colorcore.dart';
import 'buttoncheckanswerinshowdialog.dart';
import 'buttonexamrepetitioninshowdialog.dart';
import 'containerDisplayResult.dart';
class ResultDialog extends StatelessWidget{
  void Function()? onTapCheckAnswerButton;
  void Function()? onTapRepetitionQuestionButton;
  final int scorePass;
  final int lengthPass;
  ResultDialog({super.key,this.onTapCheckAnswerButton,this.onTapRepetitionQuestionButton, required this.scorePass, required this.lengthPass});

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
        child:   Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(TextStatic.resultTextInShowDialog,
              style: TextStyle(
                fontFamily: "Almarai",
                color: ColorStatic.colorResultTextInShowDialog,
                fontSize: 16,
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Text("${scorePass}/${lengthPass}",
              style: TextStyle(
                fontFamily: "Almarai",
                fontSize: 18,
                color:ColorStatic.primaryColor,
              ),
            ),
          ],
        ),
      ),
    ),
          const SizedBox(
              height: 20),
          GestureDetector(
              onTap: onTapCheckAnswerButton,
              child: CheckAnswerButton()),
          const SizedBox(
              height: 20),
          GestureDetector(
            onTap: onTapCheckAnswerButton,
            child: RepetitionAnswerButton(),
          ),
          //5-4
        ],
      ),
    );
  }
}

/*
  RepetitionAnswerButton(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen(
              resetQuestions: true,
            )
            )
            );
          }),
 */