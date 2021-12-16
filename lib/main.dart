import 'package:flutter/material.dart';
import 'package:quiz_app/Result.dart';
import 'Quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScoor = 0;

  var question = [
    {
      'questionText': 'Fav You Name ?',
      'questionAnswers': [
        {'text': 'Hossein', 'rate': 100},
        {'text': 'Ali', 'rate': 50},
        {'text': 'Hassan', 'rate': 40},
      ]
    },
    {
      'questionText': 'Fav Your Color',
      'questionAnswers': [
        {'text': 'Red', 'rate': 40},
        {'text': 'Green', 'rate': 30},
        {'text': 'Blue', 'rate': 20},
      ]
    }
  ];

  void answerQuestion(int scoor) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScoor += scoor;
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
        child: _questionIndex < question.length
            ? Quiz(
                answerQuestion: answerQuestion,
                question: question,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    ));
  }
}
