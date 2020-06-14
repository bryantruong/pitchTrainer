import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './answerChoice.dart';

class AnswerChoices extends StatefulWidget {
  final List<Map<dynamic,dynamic>> possibleOptions;
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
              .map<Widget>((answer) => AnswerChoice(answer.keys.toList()[0]))
              .toList()),
    );
  }
}
