// import flutter/material which have all core flutter widget
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// create a class that will hold as entire App
class App extends StatelessWidget {
  // build method return Widget and accept BuildContext parameter
  Widget build(BuildContext context) {
    // build method return MaterialApp class that responsible for creating the app
    return MaterialApp(home: Text('Hello'));
  }
}
