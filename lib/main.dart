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
  var totalScore = 0;

  var questions = [
    {
      'questionkey': ' 1  what is muhet the earth',
      'answer': [
        {'text': '20', 'score': 0},
        {'text': '58', 'score': 0},
        {'text': '855', 'score': 0},
        {'text': '4000', 'score': 10}
      ]
    },
    {
      'questionkey': ' 2  what is muhet the earth',
      'answer': [
        {'text': '20', 'score': 10},
        {'text': '58', 'score': 0},
        {'text': '855', 'score': 0},
        {'text': '10', 'score': 0}
      ]
    },
    {
      'questionkey': ' 3  what is muhet the earth',
      'answer': [
        {'text': '20', 'score': 0},
        {'text': '58', 'score': 0},
        {'text': '855', 'score': 10},
        {'text': '10', 'score': 0}
      ]
    },
    {
      'questionkey': ' 4  what is muhet the earth',
      'answer': [
        {'text': '20', 'score': 10},
        {'text': '58', 'score': 0},
        {'text': '855', 'score': 0},
        {'text': '10', 'score': 0}
      ]
    }
  ];

  void reset() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;

    print(totalScore);
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
              : Result(totalScore, reset)),
    );
  }
}
