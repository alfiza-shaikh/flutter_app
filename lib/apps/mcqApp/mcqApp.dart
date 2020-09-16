import 'package:flutter/material.dart';
import 'package:flutter_app/apps/mcqApp/quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain qb=QuizBrain();

class MCQApp extends StatefulWidget {
  @override
  _MCQAppState createState() => _MCQAppState();
}

class _MCQAppState extends State<MCQApp> {

  /*List<String> questions = [
    "Everything in flutter is widget",
    "Flutter is based on java programming language",
    "Widgets in flutter is categorized as stateful and stateless widget",
  ];

  List<bool> correctAnswers=[
    true,
    false,
    true,
  ];
  int count = 0;*/

  List<Widget> score=[];

  void check(bool yourAnswer){
    bool correctAns=qb.getAnswer();
    setState(() {
      if(qb.isFinished()==true){
        Alert(
          context: context,
          title: 'Done!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        qb.reset();
        score = [];
      }
      else{
        if (yourAnswer==correctAns) {
          score.add(CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.check, color: Colors.green,
            ),
          ));
        }else{
          score.add(
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close, color: Colors.red,
                ),
              ));
        }
        qb.nextQuestion();
      }});
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.redAccent[700],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Center(
                  child: Text(
                    qb.getQuestion(),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: FlatButton(
                    child: Text("True", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                    onPressed: (){
                      check(true);
                    },
                    color: Colors.white,
                    textColor: Colors.green,
                  ),
                ),
              ),
              Expanded(
                flex:1,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: FlatButton(
                    child: Text("False",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                    onPressed: (){
                      check(false);
                    },
                    color: Colors.white,
                    textColor: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: score
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
