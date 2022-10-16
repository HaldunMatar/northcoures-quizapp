import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/answer.dart';

void main()=>
  runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      print(' I am answer  $questionIndex ');
      questionIndex = questionIndex + 1;
    });

    // questionIndex +=1 ;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionkey': ' what is muhet the earth',
        'answera': ['10', '485', '555', '4000']
      },
      {
        'questionkey': ' what is favrit colors',
        'answera': ['red', 'blue', 'black', 'yellow']
      },
      {
        'questionkey': 'what is the better  in syria',
        'answera': ['idleb', 'sham', 'homus', 'hama']
      },
      {
        'questionkey': '    8 + 5 * 2 ',
        'answera': ['18', '5', '9', '8']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionkey'] as String),
            ...(questions[questionIndex]['answera'] as List<String>).map((e) {
              return Answer(e, answerQuestion);
            }).toList()
          ],
        ),
      ),
    );
  }
}
