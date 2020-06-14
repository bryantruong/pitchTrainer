import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './answerChoice.dart';

class AnswerChoices extends StatelessWidget {
  final List<Map<dynamic,dynamic>> possibleOptions;
  final Function answerQuestion;
  AnswerChoices(this.possibleOptions, this.answerQuestion);

    @override 
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: possibleOptions
              .map<Widget>((answer) => AnswerChoice(
                answerText: answer.keys.toList()[0],
                selectHandler: answerQuestion),)
              .toList()),
    );
  }
}



