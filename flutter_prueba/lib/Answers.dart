import 'package:flutter/cupertino.dart';

class Answer{
   String answer;
   String guideId;
   String questionId;
   String  right;
   String studentEventId;
   String time;
   String timestamp;
   String userId;
Answer(this.answer,this.guideId,this.questionId,this.right,this.studentEventId,this.time,this.timestamp,this.userId);

static List<Answer>answers(){
  return[Answer("individual, this, that, size, classifier for people or objects in genera","HSK1_en"
      ,"32","true","-L9ha9C2SBY_RPDGQ-E7","2001","1523330884586","3"),Answer("tener, hay, hay, existir, ser","HSK1_en"
      ,"23","false","-L9ha9C2SBY_RPDGQ-E7","1256","1523330885884","2"),Answer("minuto","HSK1_en"
      ,"124","false","-L9ha9C2SBY_RPDGQ-E7","2258","1523330888132","1")];
}

}