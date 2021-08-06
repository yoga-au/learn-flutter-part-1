// import flutter/material which have all core flutter widget
import 'package:flutter/material.dart';

// arrow function like syntax, only run one expression
void main() => runApp(App());

// create a class that will hold as entire App
class App extends StatelessWidget {
  // annotate that we will override one of the build in method in StatelessWidget
  @override
  // build method return Widget and accept BuildContext parameter
  Widget build(BuildContext context) {
    // build method return MaterialApp class that responsible for creating the app
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Text('This is body text from scaffold'),
      ),
    );
  }
}
