import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerChoice extends StatelessWidget {
  final String answerText;
  final Function selectHandler;
  AnswerChoice({this.answerText, this.selectHandler});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      width: double.infinity,
      child: CupertinoButton(
        color: CupertinoColors.systemGrey5,
        child: Text(answerText,
            style: TextStyle(color: CupertinoColors.activeBlue)),
        onPressed: selectHandler, //Using the name of the method to be ran (no parentheses)
      ),
    );
  }
}
