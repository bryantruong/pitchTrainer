import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  final String selectedAnswer;
  final bool wasCorrect;
  Result({
    this.selectedAnswer,
    this.wasCorrect
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
        title: Text(wasCorrect ? "Correct" : "Incorrect"),
        content: Text("Correct Answer: C5"),
        actions: [CupertinoDialogAction(child: CupertinoButton(onPressed: () {  },
        child: Text("Continue")),)]
      ),
    );
  }
}
