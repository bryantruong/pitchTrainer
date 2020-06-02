import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './referenceTone.dart';
import './answerChoices.dart';
import './quizTone.dart';

void main() {
  runApp(MyApp()); //Use to run MyApp class
}

class MyApp extends StatefulWidget {
  //Need to have the method createState() to link it to the class that extends State
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //That underscore indicates that this class is a private class
  //Need to use State<MyApp> to connect this state to the app

//TODO: Going to make the quiz stop at 10 questions.
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      //Use setState() to indicate what variables need to be listened on
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Pitch Trainer'),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Text(
                "Play New Tone!",
                style: TextStyle(color: CupertinoColors.activeBlue),
              ),
            ),
            QuizTone('d4'),
            AnswerChoices(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: ReferenceTone(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
