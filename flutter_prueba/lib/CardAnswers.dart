import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prueba/Answers.dart';

class CardAnswers extends StatelessWidget{
  Answer answer;

  CardAnswers(this.answer);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return InkWell(
     onTap: (){
       Scaffold.of(context).showSnackBar(SnackBar(content: Text("Answer"+answer.userId)));
     },
       child: Card(
     child: Column(
       children: <Widget>[
         Container(
           height: 144.0,
           width: 500.0
         ),
         padding(Text(answer.questionId, style: TextStyle(fontSize: 18.0))),
         Row(children:<Widget> [
           padding(Icon(Icons.question_answer_outlined)),
           padding(Text(answer.answer, style: TextStyle(fontSize: 18.0)))
         ],)

       ],
     ),
   ));
  }

  Widget padding(Widget widget){
    return Padding(padding: EdgeInsets.all(7.0),child: widget);
  }

}