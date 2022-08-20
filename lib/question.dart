import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  // 'final' tells dart that vlue will never change after initial assignment

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // 'infiinity' = full width of device
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
