import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() =>
    runApp(MyApp()); // shorthand for function with only one expression

class MyApp extends StatelessWidget {
  @override // "decorator" - to show that you are DELIBERATELY overwriting the method
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Text('This is my default text!'),
      ),
    );
  }
}
