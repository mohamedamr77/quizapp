import 'package:flutter/material.dart';
import '../core/colorcore.dart';
import '../widget/checkanswerwidget/check_answer_item.dart';
import '../widget/homepage/containerasappbar.dart';
import '../widget/list_quiz_data..dart';
import 'homepage.dart';

class CheckAnswerScreen extends StatefulWidget{
  @override
  State<CheckAnswerScreen> createState() => _CheckAnswerScreenState();
}

class _CheckAnswerScreenState extends State<CheckAnswerScreen> {

  @override
  Widget build(BuildContext context) {
   return WillPopScope(
     onWillPop: () async{
       return false;
     },
     child: Scaffold(
       body: Column(
         children: [
           CotainerAsAppBar(text: 'Check Answer'),
           Expanded(
             child: ListView.builder(
               itemBuilder:(context, index) => CheckAnswerItem(
                 index: index,
                 question: questions[index].title,
               ),
                itemCount: questions.length,
             ),
           ),
           ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(
               resetQuestions: true,
             ),));
           }, child: Text("اعادة الاختبار"),
           style: ElevatedButton.styleFrom(
             backgroundColor: ColorApp.primaryColor,
           ),
           )
         ],
       ),
     ),
   );
  }
}

/*
 GridView.builder(
           physics: NeverScrollableScrollPhysics(),
           shrinkWrap: true,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           mainAxisSpacing: 1,
           crossAxisSpacing: 1,
           ),
           itemBuilder: (BuildContext context, int index) {  
             return Text("نصوص الاهرام",
              style: TextStyle(
                color:  Colors.redAccent,
                fontSize: 14,
                fontFamily: "Almarai-Regular.ttf",
                fontWeight: FontWeight.w700,
                //fontWeight: FontWeight.bold,
              ),
             );
                 
           },
            itemCount: 4,

         ),
 */