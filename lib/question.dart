import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // constructor can be treated like props in react
  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
