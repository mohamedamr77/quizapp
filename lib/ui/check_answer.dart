import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/checkanswerwidget/check_answer_item.dart';
import '../widget/homepage/containerasappbar.dart';
import '../widget/list_quiz_data..dart';

class CheckAnswerScreen extends StatefulWidget{
  @override
  State<CheckAnswerScreen> createState() => _CheckAnswerScreenState();
}

class _CheckAnswerScreenState extends State<CheckAnswerScreen> {


  @override
  Widget build(BuildContext context) {
   return Scaffold(
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
       ],
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