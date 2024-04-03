import 'package:flutter/material.dart';
import 'package:quizapp/cool/colorcool.dart';
import 'package:quizapp/ui/q2.dart';
import 'package:quizapp/widget/numpage.dart';
import 'package:quizapp/widget/question.dart';
import 'package:quizapp/widget/divider.dart';
import 'package:quizapp/widget/radiochoice.dart';
import '../widget/containerasappbar.dart';
import '../widget/elevatedButton.dart';
int pageNumber=1;
class Question1 extends StatefulWidget{
   Question1({super.key});
  @override
  State<Question1> createState() => _Question1State();
}
class _Question1State extends State<Question1> {

  List<Map<String,dynamic> > questions =[

    {
      "title" : "question 1 ",
      "answers" : ["answer1" , "answer2"]
    } ,

    {
      "title" : "question 2 ",
      "answers" : ["answer1" , "answer2" , "answers3"]
    } ,

    {
      "title" : "question 3 ",
      "answers" : ["answer1" , "answer2" , "answers3"]
    } ,
  ];

  int questionIndex  = 0  ;

  plusQuestionIndex() {

    if(questionIndex <questions.length-1 ) {
      questionIndex++;
      setState(() {

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    String questionTitle = questions[questionIndex]['title'];
    List<String> questionAnswers = questions[questionIndex]['answers'];
    return Scaffold(
      body: Column(
        textDirection: TextDirection.rtl,
        children: [

          CotainerAsAppBar(),

          const SizedBox(
             height: 40,
           ),

          QuestionText(text: questionTitle),

          DividerLine(),

          for(String answer in questionAnswers)
          RadioChoice(text: answer),

          DividerLine(),

          Button(
          onPressed: () {
            pageNumber++;
            plusQuestionIndex();
          },
              text: 'التالى'
          ),

          SizedBox(
            height: 30,),

          Text(
              "($pageNumber/${questions.length})"
          ),
        ],
      ),
    );
  }
}