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

`build` method return widget, we can return a widget called `MaterialApp`. `MaterialApp` widget handle multiple widget and display it to the app.
`MaterialApp` accept parameters, one of parameter is `(home: )`. Home parameter will bring widget to the screen when app is mounted.
