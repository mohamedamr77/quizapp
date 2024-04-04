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
      "title" : "كم كان عمر النبي محمد صلى الله عليه وسلم عندما توفيت أمه ؟ ",
      "answers" : [" 3 سنوات" , " 4 سنوات  " , "5 سنوات","6 سنوات  "],
      "correctAnswer":"5 سنوات",
    } ,

    {
      "title" : " كم عدد التكبيرات في الركعة الأولى في صلاة العيد؟ ",
      "answers" : ["ستة" , "سبعة" , " تسعة " , "خمسة" ],
      "correctAnswer":"سبعة",
    } ,

    {
      "title" : " ما هي أطول سورة في القرآن الكريم؟",
      "answers" : [" سورة البقره" , "سورة النساء " ,"سورة المائده","سورة الكهف"],
      "correctAnswer":"سورة البقره",

    } ,

    {
      "title" : "ما السورة التي ختمت باسم وقت من أوقات الصلاة؟",
      "answers" : [" سورة القدر" , "سورة البلد " ,"سورة الأعلى","سورة الفجر"],
      "correctAnswer":"سورة الأعلى",
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
              pageNumber=1;
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