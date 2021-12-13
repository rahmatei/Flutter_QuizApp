import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int questionIndex=0;
  // This widget is the root of your application.
  List<String> question=['Fav You Name ?','Fav Your Color'];
  
  void answerQuestion(){
    questionIndex=questionIndex+1;
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text('Quiz APP'),
        ),
        body: SafeArea(
          child: Column(
            children: [
             Text(question[questionIndex]),
             RaisedButton(child: const Text('Hossein'),onPressed: answerQuestion,),
             RaisedButton(child: const Text('Hossein'),onPressed: ()=>print('Answer Chosen')),
             RaisedButton(child: const Text('Hossein'),onPressed: (){
               //...
               print('Answer Chosen');
             },)
             ],
          ),
        ),
      )
    );
  }
}
