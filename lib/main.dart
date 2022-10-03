import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('2*15'),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('31'),
              onPressed: (() {
                print('answer1');
              }),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('30'),
              onPressed: (() {
                print('answer2');
              }),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('32'),
              onPressed: (() {
                print('answer3');
              }),
            ),
          ],
        ),
      ),
    );
  }
}
