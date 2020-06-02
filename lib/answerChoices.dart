import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './answerChoice.dart';
//Use for the random answer choice
import "dart:math";

class AnswerChoices extends StatefulWidget {
  @override
  _AnswerChoicesState createState() => _AnswerChoicesState();
}

class _AnswerChoicesState extends State<AnswerChoices> {
  final possibleOptions = ["d4", "e4", "f4", "g4", "a4", "b4", "c5"];
  String getRandomAnswerChoice() {
  // generates a new Random object
    final _random = new Random();

    // generate a random index based on the list length
    // and use it to retrieve the element
    int _randomIndex = _random.nextInt(possibleOptions.length);
    String _randomOption = possibleOptions[_randomIndex];
    //remove it from the list, to prevent duplicates
    possibleOptions.removeAt(_randomIndex);
    return _randomOption;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnswerChoice(getRandomAnswerChoice()),
          AnswerChoice(getRandomAnswerChoice()),
          AnswerChoice(getRandomAnswerChoice()),
          AnswerChoice(getRandomAnswerChoice()),
          AnswerChoice(getRandomAnswerChoice()),
        ],
      ),
    );
  }
}
