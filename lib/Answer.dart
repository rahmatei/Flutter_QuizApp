import 'package:flutter/material.dart';
import 'CustomButton.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerFunction;
  final String answer;
  Answer({required this.answerFunction, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          child: Text(answer),
          onPressed: answerFunction,
        ));
  }
}
