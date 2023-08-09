// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer({super.key, required this.name, this.selectHandler});

  String name;
  final selectHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
        //  disabledBackgroundColor: Colors.blue, 
         backgroundColor: Colors.blue,
        ),
          onPressed: selectHandler,
          child: Text(name)),
    );
  }
}
