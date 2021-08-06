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
