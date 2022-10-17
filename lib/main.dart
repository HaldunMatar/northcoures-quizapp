import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  var questions = [
    {
      'questionkey': ' what is muhet the earth',
      'answer': ['10', '485', '555', '4000']
    },
    {
      'questionkey': ' what is favrit colors',
      'answer': ['red', 'blue', 'black', 'yellow']
    },
    {
      'questionkey': 'what is the better  in syria',
      'answer': ['idleb', 'sham', 'homus', 'hama']
    },
    {
      'questionkey': '    8 + 5 * 2 ',
      'answer': ['18', '5', '9', '8']
    }
  ];

  void answerQuestion() {
    if (questionIndex < questions.length) {
      print('we have more question');
      setState(() {
        print(' I am answer  $questionIndex ');
        questionIndex = questionIndex + 1;
      });
    } else {
      print('we have not  more question');
    }

    // questionIndex +=1 ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz app'),
          ),
          body: questionIndex < questions.length
              ? Quiz(questions, questionIndex, answerQuestion)
              : Result()),
    );
  }
}
