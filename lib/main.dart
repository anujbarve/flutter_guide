import 'package:flutter/material.dart';
import 'package:flutter_guide/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("MyApp")),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Ans 1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Ans 2'),
              onPressed: () => {print('Answer 2 Chosen')},
            ),
            RaisedButton(
              child: Text('Ans 3'),
              onPressed: () => {print('Answer 3 Chosen')},
            ),
            RaisedButton(
              child: Text('Ans 4'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
