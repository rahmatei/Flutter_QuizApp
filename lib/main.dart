import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  var question = [
    {
      'questionText': 'Fav You Name ?',
      'questionAnswers': ['Hossein', 'Ali', 'Hassan']
    },
    {
      'questionText': 'Fav Your Color',
      'questionAnswers': ['Red', 'Green', 'Blue']
    }
  ];

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Quiz APP'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Question(
                question: question[_questionIndex]['questionText'] as String),
            ...(question[_questionIndex]['questionAnswers'] as List<String>)
                .map((ans) {
              return Answer(answerFunction: answerQuestion, answer: ans);
            }).toList()
          ],
        ),
      ),
    ));
  }
}
