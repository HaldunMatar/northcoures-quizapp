import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;

  answerQuestion() {
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
            ElevatedButton(
              child: Text('answer'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('answer'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('answer'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
