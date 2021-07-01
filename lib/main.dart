//First import of packages then the import of files
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//Underscore informs dart that this class is private.
class _MyAppState extends State<MyApp> {
  final _questions = const [
    //{} is a shorthand for creating a MAP
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 15},
        {'text': 'Green', 'score': 20},
        {'text': 'White', 'score': 25}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Bunny', 'score': 10},
        {'text': 'Dog', 'score': 15},
        {'text': 'Cat', 'score': 20},
        {'text': 'Budgie', 'score': 25}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //const is compile time constant and final is runtime constant

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionIndex,
            )
          : Result(_totalScore),
    ));
  }
}
