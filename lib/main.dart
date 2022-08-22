import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() =>
    runApp(MyApp()); // shorthand for function with only one expression

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); // '_' turns from public to private class/property(variable)/method
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); // forces flutter to re-render the UI by calling build of widget where setState() is called
    print(_questionIndex);
  }

  @override // "decorator" - to show that you are DELIBERATELY overwriting the method
  Widget build(BuildContext context) {
    var questions = [
      'What\'s youre favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}
