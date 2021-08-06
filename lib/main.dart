import 'package:flutter/material.dart';

void main() => runApp(App());

// create a class that will hold as entire App
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text('Question here'),
            RaisedButton(
              onPressed: null,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: null,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
