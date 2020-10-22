import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prueba/Answers.dart';
import 'package:flutter_prueba/CardAnswers.dart';

class ListAnswer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ListAnswerState();
}




  class ListAnswerState extends State<ListAnswer>{
  List<Answer>answers=Answer.answers();
  List<Answer>_list=Answer.answers();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      shrinkWrap: true,
        itemCount: _list.length+1,
        itemBuilder: (BuildContext context,int index){
          return index==0 ? _searchBar() : Dismissible(
              key: ObjectKey(answers[index-1]),
              child: CardAnswers(answers[index-1]),
          onDismissed: (direction){
            setState(() {
              answers.removeAt(index);
            });
          }
          );
        });
  }

  _searchBar() {
    return Padding(
        padding: const EdgeInsets.all(8.0),

    child: TextField(
        decoration: InputDecoration( hintText: 'Search') ,
      onChanged: (text){
          text=text.toLowerCase();
          setState(() {
            _list=answers.where((note){
              var noteTitle= note.userId.toLowerCase();
              return noteTitle.contains(text);
            }).toList();
          });
      },
    ),


    );}
  
  
  }