import 'package:flutter/material.dart';
import '../ui/q1.dart';
import 'buttoncheckanswerinshowdialog.dart';
import 'buttonexamrepetitioninshowdialog.dart';
import 'containerDisplayResult.dart';

class ResultDialog extends StatelessWidget{
  const ResultDialog({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          DisplayScoer(),
          const SizedBox(
              height: 20),
          CheckAnswerButton(onTap: () { }),
          const SizedBox(
              height: 20),
          RepetitionAnswerButton(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
          }),
        ],
      ),
    );
  }

}
