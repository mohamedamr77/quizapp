import 'package:flutter/material.dart';
import '../homepage/divider.dart';
import '../homepage/questiontext.dart';
import '../list_quiz_data..dart';

class CheckAnswerItem extends StatefulWidget {
  final int index;
  final String question;
  CheckAnswerItem({Key? key, required this.index, required this.question}) : super(key: key);

  @override
  State<CheckAnswerItem> createState() => _CheckAnswerItemState();
}

class _CheckAnswerItemState extends State<CheckAnswerItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 25,
              ),
              child: Text(
                "(${widget.index})",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Almarai-Regular.ttf",
                  fontWeight: FontWeight.w700,
                  color: Color(0xff615D5D),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 35,
            left: 20,
          ),
          child: QuestionText(text: '''${widget.question}'''),
        ),
        SizedBox(height: 14),
        DividerLine(),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20,
          ),
          child: Wrap(
            textDirection: TextDirection.rtl,
            children: [
              ...questions[widget.index].answers.map((questionAnswer) => SizedBox
                (
                width: MediaQuery.of(context).size.width*0.40,
                child: Text(
                    questionAnswer,

                  style: TextStyle (
                     color: questionAnswer==questions[widget.index].correctAnswer?
                         Colors.green
                         :questionAnswer!=questions[widget.index].correctAnswer && questionAnswer == questions[widget.index].selectedAnswer?
                         Colors.red
                         :Colors.black
                  ),
                ),
              ))

            ],
          ),
        ),

        SizedBox(height: 20),
        Divider(
          color: Color(0xff12BA0F),
        ),
      ],
    );
  }
}

/*
  Wrap(
          textDirection: TextDirection.rtl,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/2-40,
              child: Text("$answer",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color:  Colors.redAccent,
                  fontSize: 14,
                  fontFamily: "Almarai-Regular.ttf",
                  fontWeight: FontWeight.w700,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        ),
 */
/*
  Wrap(
          textDirection: TextDirection.rtl,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/2-40,
              child: Text("$answer",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color:  Colors.redAccent,
                  fontSize: 14,
                  fontFamily: "Almarai-Regular.ttf",
                  fontWeight: FontWeight.w700,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],
        ),
 */



/*
 GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
        children: answer.map((ans) => Text(
          ans,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 14,
            fontFamily: "Almarai-Regular.ttf",
            fontWeight: FontWeight.w700,
          ),
        )).toList(),
        ),
 */