import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questiontext = '';

  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Text(questiontext);
  }
}
