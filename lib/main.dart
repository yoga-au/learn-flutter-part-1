// package import
import 'package:flutter/material.dart';

// custom widget import
import './quiz.dart';
import './result.dart';

void main() => runApp(App());

// create a class that will hold as entire App
class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  var _questionIndex = 0;

  static const _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answers': ['Yellow', 'Red', 'Blue', 'Purple'],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': ['Eagle', 'Dragon', 'Cat', 'Dog'],
    },
    {
      'question': 'What\'s your favorite game?',
      'answers': ['Portal', 'Ping Pong', 'Zelda', 'Dota'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questionList: _questions,
                  questionIndex: _questionIndex,
                  answerHandler: _answerQuestion)
              : Result()),
    );
  }
}
