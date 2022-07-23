import 'package:flutter/material.dart';
import 'package:flutter_guide/answer.dart';
import 'package:flutter_guide/question.dart';
import 'package:flutter_guide/quiz.dart';
import 'package:flutter_guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuestions() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Black', 'score': 40},
          {'text': 'Red', 'score': 20},
          {'text': 'Green', 'score': 10},
          {'text': 'White', 'score': 30},
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Elephant', 'score': 40},
          {'text': 'Rabit', 'score': 30},
          {'text': 'Cat', 'score': 100},
          {'text': 'Dog', 'score': 100},
        ]
      },
      {
        'questionText': 'What\'s your favorite framework?',
        'answers': [
          {'text': 'Ionic', 'score': 30},
          {'text': 'Angular', 'score': 40},
          {'text': 'React', 'score': 40},
          {'text': 'Flutter', 'score': 40}
        ]
      },
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "MyApp",
          ),
          actions: [
            IconButton(onPressed: _resetQuestions, icon: Icon(Icons.refresh))
          ],
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Result(_totalScore, _resetQuestions),
      ),
    );
  }
}
