import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  // constructor
  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: RaisedButton(
        onPressed: answerHandler,
        child: Text(answerText),
        textColor: Colors.white,
        color: Colors.blue,
      ),
    );
  }
}
