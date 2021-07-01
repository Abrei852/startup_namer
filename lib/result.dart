import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        totalScore.toString(),
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
