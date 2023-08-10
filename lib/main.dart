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
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Rabbit', 'Goat']
    },
    {
      'questionText': 'What\'s your favorite Movie?',
      'answers': ['Barbie', 'Oppenheimer', 'The Originals', 'Mario']
    },
  ];
  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
