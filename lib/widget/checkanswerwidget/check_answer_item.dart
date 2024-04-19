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
    List<String> questionAnswers = questions[widget.index - 1].answers;
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
              for (var i = 0; i < questionAnswers.length; i += 2)
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                   mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 40,
                      child: Text(
                        questionAnswers[i],
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: questions[i].correctAnswer==questions[i].selectedAnswer?
                          Colors.green: Colors.black,
                          fontSize: 14,
                          fontFamily: "Almarai-Regular.ttf",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    if (i + 1 < questionAnswers.length)
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 40,
                        child: Text(
                          questionAnswers[i + 1],
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color:questions[i+1].correctAnswer==questions[i+1].selectedAnswer?
                            Colors.green: Colors.black,
                            fontSize: 14,
                            fontFamily: "Almarai-Regular.ttf",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                  ],
                ),
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