import 'package:flutter/material.dart';

// import custom widget
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final Function answerHandler;

  Quiz(
      {@required this.questionList,
      @required this.questionIndex,
      @required this.answerHandler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questionList[questionIndex]['question']),
        ...(questionList[questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(answerHandler, answer);
        }).toList()
      ],
    );
  }
}
