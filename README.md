- [Learning Flutter Ep.1](#learning-flutter-ep1)
  - [Dart Basic](#dart-basic)
    - [Dart function syntax](#dart-function-syntax)
    - [main Function in Dart and Flutter](#main-function-in-dart-and-flutter)
    - [Define a Function and Call a Function in Dart](#define-a-function-and-call-a-function-in-dart)
    - [String, Number type in Dart](#string-number-type-in-dart)
    - [Stricly Typing in Dart](#stricly-typing-in-dart)
    - [Variable in Dart](#variable-in-dart)
    - [Object and Class in Dart](#object-and-class-in-dart)
  - [Creating Quiz App](#creating-quiz-app)
    - [Create App from Scracth](#create-app-from-scracth)
    - [Running the Widget on emulator](#running-the-widget-on-emulator)
    - [Class Constructor and Named Constructor](#class-constructor-and-named-constructor)
    - [Override and Shorthand Function](#override-and-shorthand-function)
  - [Create Quiz App](#create-quiz-app)
    - [Make Scaffold, App Bar, Body](#make-scaffold-app-bar-body)
    - [Visible and Invisible Widget](#visible-and-invisible-widget)
    - [Using Layout Widget](#using-layout-widget)
    - [Add functions to onPressed](#add-functions-to-onpressed)
    - [Anonymous function](#anonymous-function)
    - [Update data correctly with stateful widget](#update-data-correctly-with-stateful-widget)
    - [Private Property](#private-property)
    - [Creating custom widget](#creating-custom-widget)
    - [First styling, Text and Container](#first-styling-text-and-container)
    - [Multiple constructor](#multiple-constructor)
    - [Passing Callback Function](#passing-callback-function)
    - [Maps Data Type](#maps-data-type)
    - [Mapping List to Widget](#mapping-list-to-widget)
    - [final vs const](#final-vs-const)
    - [Render widget conditionally](#render-widget-conditionally)
    - [Splitting widget](#splitting-widget)
    - [Calculate score](#calculate-score)
    - [Outputting Score using getter](#outputting-score-using-getter)
    - [Resetting quiz when complete](#resetting-quiz-when-complete)

# Learning Flutter Ep.1

## Dart Basic

### Dart function syntax

In dart, function syntax almost similiar to javascript the syntax are:

```
[function return type] [function name](param) {
  // code here
}
```

### main Function in Dart and Flutter

`main()` function is a special function that used as entry point for dart code, it means `main()` will run first whenever app is started.
`main.dart` also special file name, flutter will run `main.dart` first when app is start running

### Define a Function and Call a Function in Dart

Similiar to JS, you can define your own function by using this syntax:

```
[function return type] [function name](param) {
  // code here
}
```

example:

```dart
add(num1, num2) {
  print(num1 + num2)
}
```

`print()` is similiar to `console.log()`
To call a function, simply type `[function name](param)` in the block you want to call the function.

### String, Number type in Dart

`string` type in Dart is almost similiar to JS, by using `"" or ''` that's a string/text in dart.
`number` is different in dart. Number have other 2 sub-type, `integer` and `double`.
`integer` or `int` is a number that doesn't have decimals
`double` is a number that have decimals

### Stricly Typing in Dart

Dart is Strongly-Type programming language, that means is strongly recommended to stricly type a param/var/function return example of strictly typed function:

```dart
int add(int num1, int num2) {
	return num1 + num2;
}
```

Before function name you add what this function will return, if use `void` that means it doesn't return nothing in the example, the function will return a `integer`.
Also in example, you can assign type in parameter, it's for whenever you pass parameter, it must match the type defined in function definition.

### Variable in Dart

in Dart, you can define a variable by using `var` keyword. the syntax is:

```
var [variable name] = [value]
```

The other ways to create variable is by directly assign Type in the front of variable name.

```dart
String str = "foo";
// Note: string type always begin with uppercase
```

But if you define a variable that have initial value, it's better to let Dart infer the type automatically instead.

Assign type in variable if that variable doesn't have initial value

### Object and Class in Dart

- Dart is Object-Oriented Programming
  Almost everything in Dart is an Object

- Create an Object
  To create `Object` you must create blueprint, which is a `class`. To define a class you can use this syntaxt:

  ```dart
  // Person is class name
  class Person {
  	// property with initial value
  	var name = "foo";
  	var age = 23;
  }
  ```

  and than, you can create an `object` based on `Person` class. You can define a variable that will hold an object by assign `Person` class:

  ```dart
  var p1 = Person();
  ```

  You can access and re-assign the property with dot notation (like in JS)

  ```dart
  p1.name // "Yoga"
  p1.name = "Budi"
  print(p1.name) // "Budi"
  ```

## Creating Quiz App

### Create App from Scracth

When you initialize flutter project, there's one file in lib folder called `main.dart`. `main.dart` is a file that will automatically detected by flutter as an entry point when the app first run.
In `main.dart` there's on function called `main()`, that function will run first when the app is loaded.<br>

Since in flutter App everything is a `Widget`, we need creat a widget that will hold the entire app itself.
But first we need to import a package from flutter and later we can use core widget from flutter.

```dart
import 'package:flutter/material.dart';
```

Don't forget to define a `main()` function.

```dart
void main() {

}
```

Then, we need to create a `widget` that will hold all widget that will be displayed in the app screen. We need to create a class since `widget` is special type class. Create a class that inherit `StatelessWidget` provided by flutter.

```dart
// to inherit a class, use extends keyword
class App extends StatelessWidget {

}
```

`StatelessWidget` class have a method which called `build()`. `build` method accept a parameter which is a `BuildContext` that will be passed automatically. build method return a `Widget`

```dart
class App extends StatelessWidget {
  Widget build(BuildContext context) {

  }
}
```

`build` method return widget, we can return a widget called `MaterialApp`. `MaterialApp` widget handle multiple widget and display it to the app also responsible for creating the app.
`MaterialApp` accept parameters, one of parameter is `(home: )`. Home parameter will bring widget to the screen when app is mounted.

### Running the Widget on emulator

To run the widget to the emulator, we can run `runApp()` function provided by `flutter/material`. Pass your class/widget as parameter to the `runApp` and then run the emulator.

```dart
void main() {
  // to instatiate a class, add () in the end of class name
  runApp(App())
}
```

### Class Constructor and Named Constructor

Class also accept a parameter/argument like a function by using `constructor` method in the class. For example, we have class `person`:

```dart
class Person {
  String name
  int age
}
```

To make a constructor, call the class inside the class itself like a function.

```dart
class Person {
  late String name
  int age = 0

  Person(String name, int age) {
    this.name = name
    this.age = age
  }
}
```

`constructor` method will run when the class is intanciate in the firs time. In the example above, class `Person` accept 2 argument, and that argument will be assigned to `name` and `age`.
**Note:** if you define a property with type, you must provide a default value, if you don't want to have default value, use `late` keyword in the front of property (not recommended).

There's a shorthand if you have simple `constructor` like that:

```dart
class Person {
  late String name
  int age = 0

  Person(this.name, this.age);
  // equal to
  // this.name = name
  // this.age = age
}
```

If you have `constructor` like that, when you instanciate the class with argument, that argument need in the exact order to correctly assign to it's property.
To make it more flexible, we can make a `named constructor`, the syntax are:

```dart
class Person {
  late String name
  int age = 0

  // wrap the argument in curly braces
  Person({this.name, this.age});
}

// instanciate the class
// pass the argument with [(args/prop name): (value)]
var p1 = Person(name: "foo", age: 23);
```

However this make the argument is optional, which mean you can pass 0 argument. To make argument is required, one way to do that is by give it `required` keyword in front of the argument

```dart
class Person {
  String name;
  int age;

  // you can delete the initial value or late keyword
  // if you use required
  Person({required this.name, required this.age});
}
```

### Override and Shorthand Function

Provide `@override` keyword when you cancel the built in method from extended class and want to run the method by your own.<br>

There's shorthand for function syntax in Dart:

```dart
void main() => runApp();
```

It looks like arrow function in JS, but it only run one expression.

## Create Quiz App

### Make Scaffold, App Bar, Body

To add a base of the flutter app, we can pass `Scaffold` widget in `MaterialApp`. `Scaffold` accept multiple argument, one of the argument is `appBar:`. Widget passed in `appBar` will be used as App Bar. Flutter have built-in `AppBar` widget.

```dart
return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
      ),
    );
```

We can also add `body` property. `body` accept Widget to display in app body, in the example, below app bar

```dart
return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Text('This is body text from scaffold'),
      ),
    );
```

### Visible and Invisible Widget

`body` property in `Scaffold` only can take one widget, therefore we can't only pass one widget like `Text`. `Text` widget also known as **Visible** widget, visible widget are widget that handle Output and Input, other example of visible widget are `Card`, `RaisedButton`.<br>

**Invisible** widget are widget that not rendered into the screen, but can be useful to do for layouting widget or controlling the widget, example of invisible widget are `Row`, `Column`, `ListView`

### Using Layout Widget

Pass in `Column` widget to make of layout that display element from top to bottom. `Column` widget accept `children` argument which is a `List` of widget.<br>

**About List**
`List` is data type in Dart, which is equivalent to `Array` in Javascript.

```dart
body: Column(
  children: [
    // multiple widget
  ])
```

Let's add a `Text` widget, which hold the question. After that, use `RaisedButton` for the answer. `RaisedButton` is one of button widget, that have `child` and `onPressed` properties. `child` property is a content of the button and `onPressed` is a function to run when button is pressed/tap. For now, pass in `null` to `onPressed`.

```dart
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
```

The button will appear greyed out since we passed `null` in `onPresssed` which means no function/disabled.

### Add functions to onPressed

Before adding funtions to `onPressed`, define the function itself, you want to define this function inside the widget since it's recommended the widget to standalone.

```dart
class App extends StatelessWidget {
  // define function here

  @override
  ...
}
```

Then, you provide **pointer** to the `onPressed`.

```dart
// NOT funtionName()
RaisedButton(onPressed: functionName, child: "foo"),
```

**IMPORTANT NOTE**
Don't pass `functionName()` (with brackets), because that means you immedietly execute the function when the button is rendered, which is not we want. We want to execute the function when is pressed therefore we provide a pointer to the function. Pointer to function can be given by typing the function name without brackets.

### Anonymous function

Anonymous function in dart using this syntax:

```dart
() => // One code expression here
```

The arrow-function like syntax above can only do one expression

```dart
() {
  // code here
}
```

Syntax above can do multiple expression.

### Update data correctly with stateful widget

**Note:** need more explanation about stateful widget (initialize local state, how and why connect the `State` to `StatefulWidget`).

### Private Property

`private` syntax can be useful to protect your properties/class/function from being used in the other file when you import the dart file.

Add leading underscore to the properties/class/function/etc **name** to make private.

```dart
var _string = "foo" // private variable
```

### Creating custom widget

one of flutter convention is `one class widget per file`. To make custom widget, simply create new dart file inside `lib` folder. With flutter extension, type in `st` to show a shortcut to make either `Stateless` or `Stateful` widget.<br>

To receive data from outside the widget, we can add constructor to the widget, this behavior almost like props in React.

```dart
class Question extends StatelessWidget {
  String questionText;

  // constructor can be treated like props in react
  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    // use the text data from outside in Text widget
    return Text(questionText);
  }
}
```

In `main.dart`, import the custom widget and pass in the argument that will be used by the custom widget.

```dart
// custom widget import
import './question.dart';

// pass in the data as argument
Question(questionText: questions[_questionIndex])
```

In the `question.dart` you will see a warning that because we declare the widget properties is muttable, but we use `Stateless` widget which means all properties all immutable inside the widget. We need to declare that properties as immutable inside the widget by adding `final` keyword.

```dart
final String questionText;
```

### First styling, Text and Container

To style the `Text` widget, we can add `style` properties in `Text` widget. `style` property use `TextStyle` class, `TextStyle` class accept multiple argument, on of the argument is `fontSize`.

```dart
Text(
  questionText,
  style: TextStyle(fontSize: 24),
),
```

`fontSize` accept a `double` data type, which represent logical pixel (dp).

```dart
Text(
  questionText,
  style: TextStyle(fontSize: 24),
  textAlign: TextAlign.center,
),
```

To adjust the text aligment, instead adding align argument in `TextStyle` class, we add `textAlign` argument in `Text` widget. `textAlign` argument accept `enum` from `TextAlign` class.<br>

However, the text still appear in the left because `Text` widget have width of the width of the text itselft (not the entire screen). To make it appear in the center, we can wrap `Text` widget in the `Container` widget.

```dart
return Container(
  width: double.maxFinite,
  margin: EdgeInsets.only(top: 24, bottom: 24),
  child: Text(
    questionText,
    style: TextStyle(fontSize: 24),
    textAlign: TextAlign.center,
  ),
);
```

First, we need to pass `Text` widget we made before to `child` property in `Container`. Widget in `child` prop will be wrap around the container. `Container` have `width` property to adjust the property. `margin` property in `Container` follow box model in css, but we use `EdgeInsets` class to adjust the value of margin/padding.

### Multiple constructor

You can add multiple constructor in a class by using dot notation, example:

```dart
Person.youngAdult(this.name) {
  this.age = 25;
};
```

### Passing Callback Function

Let's separate our answer button to separate widget. Create `answer.dart` and create `Stateless` widget.

```dart
class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: RaisedButton(
        onPressed: null,
        child: Text("Answer"),
        color: Colors.blue,
      ),
    );
  }
}
```

Instead defining the `onPressed` function in the widget, we can pass the function in the `main.dart` to `Answer` widget. Define the property of `answerHandler` that have `Function` type and define constructor that will accept the property.

```dart
class Answer extends StatelessWidget {
  final Function answerHandler;

  // constructor
  Answer(this.answerHandler);

  @override
  // ...
}
```

Now, import `Answer` widget to `main.dart` and replace `RaisedButton()` with `Answer()`.

```dart
children: [
  Question(questionText: questions[_questionIndex]),
  Answer(),
  Answer(),
  Answer(),
],
```

To pass function to widget and do lifting the state up, you can pass the **pointer** of the function you want to give to the `Answer` widget.

```dart
children: [
  Question(questionText: questions[_questionIndex]),
  // don't use braces
  Answer(_answerQuestion),
  Answer(_answerQuestion),
  Answer(_answerQuestion),
],
```

### Maps Data Type

Other data type in dart is `Maps`. Shorthand `Maps` syntax almost like a JSON in JavaScript. Dart also have built in `Map()` class. `Maps` syntax written in `key: value` pair.

```dart
var questions = [
  {
    // key : value
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
```

To access the value in `Maps`, the syntax are square bracket notation:

```dart
var questions = [
  {
    // key : value
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

// [List Name][index of the maps][key name]
print(questions[0]['question']) // output: What's your favorite color?
```

### Mapping List to Widget

Let's code our button programatically instead hard code it. We can render the button based on the length of the array by using `map()` method. `map()` will run a function that provided in each of the array value.

```dart
// select the list we want to use map method
questions[_questionIndex]['answers']
    .map(
      // anonymous function to run each value of array
      (answer) {
  return Answer(_answerQuestion, answer);
})
```

However, we will get an error from dart because `questions[_questionIndex]['answers']` it's unknown to dart what the data type is. Define the type for `questions[_questionIndex]['answers']` by wrap `questions[_questionIndex]['answers']` with brackets and add `as` keyword followed by type definition.

```dart
(questions[_questionIndex]['answers'] as List<String>)
    .map((answer) {
  return Answer(_answerQuestion, answer);
})
```

Now, `children` argument accept only list of widget, but `map()` method return a `Iterable` or `List`. `children` can't read nested list, therefore we need to extract the `Widget` from `map()` by using **spread operator**. Spread operator shorthand syntax is `...`(triple dot)

```dart
// triple dot in the front is the spread operator
...(questions[_questionIndex]['answers'] as List<String>)
    .map((answer) {
  return Answer(_answerQuestion, answer);
  // toList() method to make sure the return value is list by converting it
}).toList()
```

### final vs const

`const` keyword means every variable/object **must** have a value even before compiling and the data is immutable. For example `new DateTime.now()` is **not** a constant, because the method need to be executed first after compiling.

```dart
const a = 5 // this is okay since we immediately initialize the variable with value
const b = DateTime.now() // this will show compile error since we don't know the initial value

const c;
c = 7
// the code above also show compile error
// since we initialize c with no value, initialization must be in the same line
```

**Note:** if the variable that contain `List` is const, the value in the list also become `const`.<br>

`final` keyword is not checking the value at compile time, but after the compilation/build.

### Render widget conditionally

`if` statement in dart is almost like in JavaScript, except in dart there's no strictly equal (`===`) since dart is strong type language, you can use double equal to do equal operation. Also dart have `identical()` method.

To render widget conditionally, one of the way to do that by using ternary operator (the syntax are the same with JavaScript). In the example, we will conditionally provide a widget to `body` property in `Scaffold`.

```dart
body: _questionIndex < questions.length
    ? Column( // if true
        children: [
          Question(
              questionText: questions[_questionIndex]['question']),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ],
      )
    : Center( // else
        child: Text('You did it!'),
      )),
```

**Quick note:** `Center` widget is a layout widget that will be positioned in the center vertically and horizontally.

### Splitting widget

It's good practice to split your widget tree into smaller custom widget if the widget tree getting too long/too many line.

### Calculate score

Let's implement a score calculation. First modify the `answer` key in `questions` list, instead of list of string, convert it to map to hold a `text` key which handle the output text and `isCorrect` key to determine wether the answer is correct or not.

```dart
{
  'question': 'What\'s your favorite color?',
  'answers': [
    {'text': 'Yellow', 'isCorrect': false},
    {'text': 'Red', 'isCorrect': false},
    {'text': 'Blue', 'isCorrect': true},
    {'text': 'Purple', 'isCorrect': false}
  ],
},
```

To do score calculation, we can put our logic in the function that attached in `onPressed` in the `Answer` widget, which is `_answerQuestion` function. We can pass `isCorrect` value to the function as parameter. Since we render `Answer` widget programmatically in `Quiz`, we can pass the parameter in there. We need to update the `map()` method because doesn't working correctly, we need to change `(questionList[questionIndex]['answers'] as List<String>)` especially the `List<String>` since we change the data type of `answers` key. Change it to `List<Map<String, Object>>`.

```dart
Question(questionText: questionList[questionIndex]['question']),
...(questionList[questionIndex]['answers'] as List<Map<String, Object>>)
    .map((answer) {
  return Answer(
      () => answerHandler(answer['isCorrect']), answer['text']);
}).toList()
```

Also in the code snippet above, in the first argument of `Answer` we pass a **anonymous function** so we can pass parameter to it. Anonymous function in that will not executed immediately since we don't explicitly say 'Execute it' and the `answerHandler()` now will run whenever the anonymous funtion. <br>

Now in `main.dart` we define a variable to hold a score, then in `_answerQuestion` we can accept a parameter of `boolean`, add if statement to check if the parameter true, if true add 1 to the score.

```dart
var _score = 0;

void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      _score += 1;
    }

    // ...
    print(_score);
  }
```

### Outputting Score using getter

After we succesfully calculate the score, we can pass it to `Result` widget. Define the property and constructor for the score from upper widget. Then we can use **getter** to process the score and display a text based on the score. getter is special property from dart that mix between property and method, `get` method can't accept parameter since we can only return something when the getter name is referenced.

```dart
class Result extends StatelessWidget {
  final int score;

  Result(this.score);

  // getter method with get keyword
  String get resultText {
    String output;

    if (score < 3 && score > 0) {
      output = 'Try to learn more';
    } else if (score == 0) {
      output = 'No correct answer';
    } else {
      output = 'You did it';
    }

    return output;
  }

  @override
  // ...
```

And then we can reference `resultText` getter as `Text` argument.

```dart
child: Text(
  resultText, // reference to getter
  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
  textAlign: TextAlign.center,
),
```

### Resetting quiz when complete

Add a button in `Result` widget, this means we need to wrap our `Text` widget with `Column`. With the help of flutter extensions, we can perform automatic refactor by placing your cursor to `Text` widget, then press `Ctrl + Shift + R`, then select `Wrap with column`. After the refactor is complete, add `RaisedButton` below `Text`. <br>

We need to define a function that will handle the restarting process. The logic are by fire a `setState` to perform re-render, inside the `setState`, assign `_questionIndex` and `_score` to `0` so the question will be back to beginning.

```dart
// main.dart

void _restart() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }
```

```dart
// result.dart

class Result extends StatelessWidget {
  final int score;
  final Function restartHandler;

  Result(this.score, this.restartHandler);

  String get resultText {
    //...
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            onPressed: restartHandler, // remember to use pointer
            child: Text('Restart'),
          )
        ],
      ),
    );
  }
}
```
