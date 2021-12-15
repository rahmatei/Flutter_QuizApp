import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback? answerFunction;
  final String? answer;
  Answer({this.answerFunction, this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          child: Text(answer as String),
          onPressed: answerFunction,
        ));
  }
}
