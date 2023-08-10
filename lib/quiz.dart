import 'package:calculator/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionindex;
  const Quiz(
      {super.key,
      required this.questions,
      required this.answerQuestion,
      required this.questionindex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionindex]['questionText'] as String,
        ),
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(
            name: (answer['text'].toString()),
            selectHandler:()=> answerQuestion(answer['score']),
          );
        }).toList(),
      ],
    );
  }
}
