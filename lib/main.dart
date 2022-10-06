import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';
import 'package:quizapp/answer.dart';

void main() => runApp(MyApp());

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
    var questions = ['Q1 2*5', 'Q2 25 /  5 ', 'Q3  4 * 9 ', 'Q4  8 * 7 '];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}
