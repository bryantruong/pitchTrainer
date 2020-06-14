import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './answerChoice.dart';
//Use for the random answer choice
import "dart:math";

class AnswerChoices extends StatefulWidget {
  final List<String> possibleOptions;
  AnswerChoices(this.possibleOptions);
  @override
  _AnswerChoicesState createState() => _AnswerChoicesState();
}

class _AnswerChoicesState extends State<AnswerChoices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: widget.possibleOptions
              .map<Widget>((answer) => AnswerChoice(answer))
              .toList()),
    );
  }
}
