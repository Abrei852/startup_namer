import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.black),
          child: Text(
            answerText,
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: selectHandler,
        ));
  }
}
