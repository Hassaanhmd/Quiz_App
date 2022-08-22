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

  final questions = const [
    {
      'questionText': 'What\'s youre favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); // forces flutter to re-render the UI by calling build of widget where setState() is called
    print(_questionIndex);

    if (_questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override // "decorator" - to show that you are DELIBERATELY overwriting the method
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_questionIndex < questions.length)
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
