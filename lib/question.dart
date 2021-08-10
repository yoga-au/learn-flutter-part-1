import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // constructor can be treated like props in react
  Question({@required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 24, bottom: 24),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
