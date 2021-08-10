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
  var _score = 0;

  static const _questions = [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Yellow', 'isCorrect': false},
        {'text': 'Red', 'isCorrect': false},
        {'text': 'Blue', 'isCorrect': true},
        {'text': 'Purple', 'isCorrect': false}
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Eagle', 'isCorrect': false},
        {'text': 'Dragon', 'isCorrect': false},
        {'text': 'Cat', 'isCorrect': true},
        {'text': 'Dog', 'isCorrect': false}
      ],
    },
    {
      'question': 'What\'s your favorite game?',
      // 'answers': ['Portal', 'Ping Pong', 'Zelda', 'Dota'],
      'answers': [
        {'text': 'Portal', 'isCorrect': true},
        {'text': 'Ping Pong', 'isCorrect': false},
        {'text': 'Zelda', 'isCorrect': false},
        {'text': 'Dota', 'isCorrect': false}
      ],
    },
  ];

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      _score += 1;
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_score);
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
              : Result(_score, _restart)),
    );
  }
}
