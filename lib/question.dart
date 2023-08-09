// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question(this.questionText);

  String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 28,
          
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
