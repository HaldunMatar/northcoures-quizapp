import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function()? selectedHandler;

  String answertext = '';

  Answer(this.answertext, this.selectedHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: selectedHandler,
        child: Text(answertext),
      ),
    );
  }
}
