import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.totalScore, required this.reset});

  final int totalScore;
  final VoidCallback reset;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You scored ${totalScore.toString()}',
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed:reset,
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
