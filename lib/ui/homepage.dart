import 'package:flutter/material.dart';
import 'package:quizapp/widget/dialog/resultdialog.dart';
import 'package:quizapp/widget/homepage/questiontext.dart';
import 'package:quizapp/widget/homepage/divider.dart';
import 'package:quizapp/widget/homepage/radiochoice.dart';
import '../core/TextCore.dart';
import '../widget/homepage/containerasappbar.dart';
import '../widget/homepage/elevatedButton.dart';
import '../widget/quiz_data..dart';
import '../widget/quiz_variables.dart';


class HomeScreen extends StatefulWidget {
  final bool resetQuestions;
  const HomeScreen({Key? key, this.resetQuestions = false}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  void plusQuestionIndex() {
    if (questionIndex < questions.length - 1) {
      if(questions[questionIndex]["selectAnswer"]!=null){
        questionNumber++;
        questionIndex++;
        print(score);// 0    1     2
        setState(() {
        });
      }
    }
    else{
      checkScore();
      displayDialog();
    }
  }

  // void handleAnswer(String selectedAnswer) {
  //   questions[questionIndex]['selectAnswer'] = selectedAnswer;
  //   setState(() {
  //
  //   });
  // }

  void initState() {
    super.initState();
    if (widget.resetQuestions) {
      setState(() {
        questionIndex = 0; // Reset question index to 0
        questionNumber = 1; // Reset page number
      });
    }
  }

  void displayDialog(){
    showDialog(
      context: context,
      builder: (context) => ResultDialog(
        lengthPass: questions.length,
        scorePass: score,
        onTapCheckAnswerButton: (){
          questionIndex=0;
          score=0;
          questionNumber=1;
          for (int i = 0; i < questions.length; i++) {
            questions[i]['selectAnswer'] = null;
          }
          Navigator.pop(context);
          setState(() {});
        },
      ),
    );
  }

  checkScore( ) {
    for(int i   = 0 ;  i<questions.length ; i++ ) {
      if(questions[i]["correctAnswer"]== questions[i]["selectAnswer"] ) {
        score += 1 ;
      }
      setState(() {});
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

          for (String answer in questionAnswers)
            RadioChoice(
              textChoice: answer,
              groupValue: questions[questionIndex]['selectAnswer'],
              valueRdio: answer,
              onChanged: (value){
                questions[questionIndex]["selectAnswer"]= value;
                setState(() {});
              },
            ), //correct answer

          DividerLine(),

          Button(
            onPressed: () {
              plusQuestionIndex();
            },
            text: questionNumber == questions.length ?
                  TextStatic.submitButton
                :
                   TextStatic.continueButton,
          ),

          const SizedBox(
            height: 30,
          ),

          Text("($questionNumber/${questions.length})"),
        ],
      ),
    );
  }
}
