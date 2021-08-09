import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;

  // constructor
  Answer(this.answerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: RaisedButton(
        onPressed: answerHandler,
        child: Text("Answer"),
        color: Colors.blue,
      ),
    );
  }
}
