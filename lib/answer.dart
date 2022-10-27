import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function answerQuestion;

  String answertext = '';

  int score = 0;

  Answer(this.answertext, this.answerQuestion, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: () {
          answerQuestion(score);
        },
        child: Text(answertext),
      ),
    );
  }
}
