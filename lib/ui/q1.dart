import 'package:flutter/material.dart';
import 'package:quizapp/cool/colorcool.dart';
import 'package:quizapp/widget/question.dart';
import 'package:quizapp/widget/divider.dart';
import 'package:quizapp/widget/radiochoice.dart';
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
              showDialog(context: context, builder: (context){
                return AlertDialog(
                 content: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(
                         left: 10,
                         right: 10,
                         top: 25,
                         bottom: 15,
                       ),
                       child: Container(
                         height: 114,
                         width: 234,
                         decoration: BoxDecoration(
                           color: ColorStatic.colorContentShowDialog,
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(
                             color: Color(0xff006672),
                             width: 0.5,
                           )
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("النتيجة",
                             style: TextStyle(
                               color: Color(0xff6E7070),
                               fontSize: 16,
                             ),
                             ),
                             SizedBox(
                               height: 10,
                             ) ,
                             Text("6/6",
                             style: TextStyle(
                               fontSize: 18,
                               color: Color(0xff006672)
                             ),
                             ),
                           ],
                         ),
                       ),
                     ),
                    SizedBox(height: 20,),
                     Container(
                       width: 234,
                       height: 40,
                       decoration: BoxDecoration(
                           color: ColorStatic.colorContentShowDialog,
                           borderRadius: BorderRadius.circular(8),
                         border: Border.all(
                           color: Color(0xff006672),
                           width: 1,
                         )
                       ),
                       child: Center(
                         child: Text("راجع اجاباتك ",
                         style: TextStyle(
                           color: ColorStatic.primaryColor,
                           fontSize: 14,
                           fontWeight: FontWeight.w700,
                         ),
                         ),
                       ),
                     ),
                     SizedBox(height: 20,),
                     GestureDetector(
                       child: Container(
                         width: 234,
                         height: 40,
                         decoration: BoxDecoration(
                             color: ColorStatic.primaryColor,
                             borderRadius: BorderRadius.circular(8),
                             border: Border.all(
                               color: const Color(0xff006672),
                               width: 1,
                             )
                         ),
                         child: Center(
                           child: Text("اعادة الأختبار ",
                             style: TextStyle(
                               color: ColorStatic.white,
                               fontSize: 14,
                               fontWeight: FontWeight.w700,
                             ),
                           ),
                         ),
                       ),
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                         pageNumber=1;
                       },
                     ),
                   ],
                 ),
                );
              });
            }
          },
              text: pageNumber==questions.length ? "ارسال" :"التالى ",
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