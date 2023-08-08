// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer({super.key, required this.name, this.selectHandler});

  String name;
  final selectHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(name)),
    );
  }
}
