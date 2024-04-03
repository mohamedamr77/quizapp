// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:quizapp/ui/q1.dart';
//
// import '../widget/containerasappbar.dart';
// import '../widget/divider.dart';
// import '../widget/elevatedButton.dart';
// import '../widget/question.dart';
// import '../widget/radiochoice.dart';
//
// class Question2 extends StatefulWidget{
//   @override
//   State<Question2> createState() => _Question2State();
// }
//
// class _Question2State extends State<Question2> {
//   int _value=0;
//
//    List<String> questions = [
//     "q1" ,
//     "q2" ,
//     "q3"
//     ] ;
//
//    int questionIndex  = 0  ;
//
//
//     plusQuestionIndex() {
//
//     if(questionIndex <questions.length-1 ) {
//       questionIndex++;
//       setState(() {
//
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         textDirection: TextDirection.rtl,
//         children: [
//
//           CotainerAsAppBar(),
//
//           const SizedBox(
//             height: 40,
//           ),
//
//           Text(questions[questionIndex] ,
//             style: TextStyle(
//                 color:  Colors.orange,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 14
//             ),
//             textAlign: TextAlign.right,
//           ) ,
//
//           DividerLine(),
//           RadioChoice(text: "جيد جدا "),
//           RadioChoice(text: "  مقبول"),
//           DividerLine(),
//           Button(
//               onPressed: () {
//                 questionIndex++;
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Question1()));
//               },
//               text: 'التالى'
//           ),
//           SizedBox(
//             height: 30,),
//           Text(
//               "($questionIndex/6)"
//           ),
//         ],
//       ),
//     );
//   }
// }