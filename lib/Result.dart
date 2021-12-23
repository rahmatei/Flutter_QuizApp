import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoor;
  final VoidCallback resetQuestion;
  Result({required this.scoor, required this.resetQuestion});

  String get getTextResult {
    String message = "End OF Quesstions\n";
    if (scoor < 60) {
      message += "Bed Quiz";
    } else if (scoor <= 120) {
      message += "Meduim Quiz";
    } else if (scoor > 120) {
      message += "Good Quiz";
    } else {
      message += "BED";
    }
    return message;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            getTextResult,
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Reset Question'),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: resetQuestion,
          ),
        ],
      ),
    );
  }
}
