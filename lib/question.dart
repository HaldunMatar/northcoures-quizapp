import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String textquestion = '';

  Question(this.textquestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        textquestion,
        style: TextStyle(
          color: Color.fromARGB(255, 6, 0, 0),
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
      color: Color.fromARGB(255, 154, 216, 230),
      width: double.infinity,
    );
  }
}
