import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

  String get resultText {
    String output;

    if (score < 3 && score > 0) {
      output = 'Try to learn more';
    } else if (score == 0) {
      output = 'No correct answer';
    } else {
      output = 'You did it';
    }

    return output;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultText,
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
