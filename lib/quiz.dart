import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> questions;

  int questionIndex = 0;
  Function()? answerQuestion;

  Quiz(this.questions, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionkey'] as String),
        ...(questions[questionIndex]['answer'] as List<String>)
            .map((ansertext) {
          return Answer(ansertext, answerQuestion);
        }).toList()
      ],
    );
  }
}
