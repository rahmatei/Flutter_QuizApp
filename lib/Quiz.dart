import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {required this.question,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question: question[questionIndex]['questionText'] as String),
        ...(question[questionIndex]['questionAnswers']
                as List<Map<String, Object>>)
            .map((ans) {
          return Answer(
              answerFunction: () => answerQuestion(ans['rate'] as int),
              answer: ans['text'] as String);
        }).toList()
      ],
    );
  }
}
