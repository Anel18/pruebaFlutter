import 'package:flutter/cupertino.dart';
import 'package:flutter_prueba/Answers.dart';
import 'package:flutter_prueba/CardAnswers.dart';

class ListAnswer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ListAnswerState();
}




  class ListAnswerState extends State<ListAnswer>{
  List<Answer>answers=Answer.answers();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      shrinkWrap: true,
        itemCount: answers.length,
        itemBuilder: (BuildContext context,int index){
          return Dismissible(
              key: ObjectKey(answers[index]),
              child: CardAnswers(answers[index]),
          onDismissed: (direction){
            setState(() {
              answers.removeAt(index);
            });
          }
          );
        });
  }
  
  }