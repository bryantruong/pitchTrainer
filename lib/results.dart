import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  final String correctAnswer;
  final bool wasCorrect;
  final Function resetState;
  Result({this.correctAnswer, this.wasCorrect, this.resetState});

  String get resultPhrase {
    return "Correct Answer: $correctAnswer";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
          title: Text(wasCorrect ? "Correct!" : "Incorrect!"),
          content: Text(resultPhrase),
          actions: [
            CupertinoDialogAction(
              child: CupertinoButton(
                onPressed: resetState,
                child: Text("Continue"),
              ),
            )
          ]),
    );
  }
}
