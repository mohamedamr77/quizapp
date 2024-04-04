import 'package:flutter/material.dart';
import 'package:quizapp/widget/resultdialog.dart';
import 'package:quizapp/widget/question.dart';
import 'package:quizapp/widget/divider.dart';
import 'package:quizapp/widget/radiochoice.dart';
import '../core/TextCore.dart';
import '../core/colorcore.dart';
import '../widget/containerasappbar.dart';
import '../widget/elevatedButton.dart';

int pageNumber=1;

class HomeScreen extends StatefulWidget{
   HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Map<String,dynamic> > questions =[
    {
      "title" : " : تقييم امتحانات دكتوره عايده ",
      "answers" : ["وحشه" , "وحشه اوى " , "مش هجاوب عشان احافظ على صيامى "],
      "correctAnswer":"وحشه",
    } ,

    {
      "title" : " : تقييم دكتور مصطفى العشرى ",
      "answers" : ["جميل" , "عظمه" , "فوق عظمه " , "فوق التقييم" ]
    } ,

    {
      "title" : "تقييم امتحانات دكتوره امنيه  ",
      "answers" : ["ربنا يخليها لينا يارب " , "زى الفل " ,]
    } ,

    {
      "title" : "  هل انا شخص مميز بالنسبالك ",
      "answers" : ["ايوه " , "اكيد طبعا " ,]
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
          RadioChoice(text: answer, groupValue: 1, valueRdio: 0,),

          DividerLine(),

          Button(
          onPressed: () {
            pageNumber++;
            plusQuestionIndex();
            if(pageNumber-1==questions.length){
              showDialog(
                  context: context,
                  builder: (context) => ResultDialog(),
              );
            }
          },
              text: pageNumber==questions.length ? TextStatic.submitButton :TextStatic.continueButton,
          ),

          const SizedBox(
            height: 30,),

          Text(
              "($pageNumber/${questions.length})"
          ),
        ],
      ),
    );
  }
}