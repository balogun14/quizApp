// ignore_for_file: use_key_in_widget_constructors, avoid_print,use_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:calculator/question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
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
      'What\'s Your favorite colour?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('My First App'),
            ),
            body: Column(
              children: <Widget>[
                Question(questions[_questionIndex]),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 150,
                      child: Answer(
                        name: 'A',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 150,
                      child: Answer(
                        name: 'B',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                     Answer(
                  name: "c",
                ),
                 SizedBox(
                      width: 20,
                    ),
                Answer(
                  name: "D",)
                  ],
                )
              ],
            )));
  }
}
