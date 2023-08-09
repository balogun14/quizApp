// ignore_for_file: avoid_print,use_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:calculator/question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s Your favorite colour?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Rabbit', 'Goat']
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('My First App'),
            ),
            body: Column(
              children: <Widget>[
                Question(
                  questions[_questionIndex]['questionText'] as String,
                ),
                ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
                  return Answer(name: answer, selectHandler: answerQuestion,);
                }).toList(),
              ],
            )));
  }
}
