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

  List<String> question = ['Fav You Name ?', 'Fav Your Color'];

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
            Question(question: question[_questionIndex]),
            // ignore: deprecated_member_use
            Answer(
              answerFunction: answerQuestion,
            ),
            // ignore: deprecated_member_use
            Answer(
              answerFunction: answerQuestion,
            ),
            Answer(
              answerFunction: answerQuestion,
            ),
          ],
        ),
      ),
    ));
  }
}
