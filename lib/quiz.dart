import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './quizTone.dart';
import './answerChoices.dart';
import './referenceTone.dart';
import './models/questionModel.dart';

class Quiz extends StatelessWidget {
  QuestionModel questionAndAnswer;
  Function answerFunction;
  Quiz({this.questionAndAnswer, this.answerFunction});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Play New Tone!",
                style: TextStyle(color: CupertinoColors.activeBlue),
              ),
            ),
            QuizTone(questionAndAnswer.question),
            AnswerChoices(questionAndAnswer.answers, answerFunction),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: ReferenceTone(),
              ),
            ),
          ],
        ),
    );
  }
}