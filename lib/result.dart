import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int marks = 0;

  Function tryagin;

  Result(this.marks, this.tryagin);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(margin: EdgeInsets.all(50), child: Text(marks.toString())),
          Container(
              margin: EdgeInsets.all(50),
              child: Text(marks > 20 ? 'sucess' : 'fail')),
          ElevatedButton(
              onPressed: () {
                tryagin();
              },
              child: Text('Try Agan '))
        ],
      ),
    );
  }
}
