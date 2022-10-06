import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function()? selectedHandler;

  Answer(this.selectedHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: ElevatedButton(
        onPressed: selectedHandler,
        child: Text('Answer 555 '),
      ),
    );
  }
}
