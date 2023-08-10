// ignore_for_file: avoid_print,use_const, prefer_const_constructors

import 'package:calculator/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s Your favorite colour?',
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 8,
        },
        {
          'text': 'Green',
          'score': 6,
        },
        {
          'text': 'White',
          'score': 5,
        },
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {
          'text': 'Cat',
          'score': 10,
        },
        {
          'text': 'Dog',
          'score': 8,
        },
        {
          'text': 'Rabbit',
          'score': 6,
        },
        {
          'text': 'Goat',
          'score': 5,
        },
      ]
    },
    {
      'questionText': 'What\'s your favorite Movie?',
      'answers': [
        {
          'text': 'Oppenhehimer',
          'score': 10,
        },
        {
          'text': 'Barbie',
          'score': 8,
        },
        {
          'text': 'The Originals',
          'score': 6,
        },
        {
          'text': 'Mario',
          'score': 5,
        },
      ]
    },
  ];
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have More Questions');
    } else {
      print('No more questions');
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionindex: _questionIndex,
                questions: _questions,
              )
            : Result(
                totalScore: _totalScore,
                reset: _resetQuiz,
              ),
      ),
    );
  }
}
