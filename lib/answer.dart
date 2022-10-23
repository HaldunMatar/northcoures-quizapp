import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function selectedHandler;

  String answertext = '';

  int score = 0;

  Answer(this.answertext, this.selectedHandler, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: () {
          selectedHandler(score);
        },
        child: Text(answertext),
      ),
    );
  }
}
