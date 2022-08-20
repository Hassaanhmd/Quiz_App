import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  // 'final' tells dart that vlue will never change after initial assignment

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
