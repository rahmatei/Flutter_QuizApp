import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback? answerFunction;
  Answer({this.answerFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          child: const Text('Hossein'),
          onPressed: answerFunction,
        ));
  }
}
