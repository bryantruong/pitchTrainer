import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//Use for the random answer choice
import "dart:math";

import './referenceTone.dart';
import './answerChoices.dart';
import './quizTone.dart';
import './models/questionModel.dart';

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

  @override
  void initState(){
    currentQuestion = generateQuestionObject();
    print(currentQuestion);
  }

  List<QuestionModel> currentQuestion;
  var _questionIndex = 0;
  var _totalScore = 0;
  final possibleOptions = ["d4", "e4", "f4", "g4", "a4", "b4", "c5"];

//----------------------------- BEGIN FUNCTIONS ---------------------------------------
  List<QuestionModel> generateQuestionObject() {
    List<String> answerList = List<String>();
    //Create a random list of answers
    while (answerList.length < 5) {
      // generates a new Random object
      final _random = new Random();
      // generate a random index based on the list length
      // and use it to retrieve the element
      int _randomIndex = _random.nextInt(possibleOptions.length);
      String _randomOption = possibleOptions[_randomIndex];
      //Only add it to the answerList if it isn't already there
      if (answerList.contains(_randomOption)){
        continue;
      } else {
        answerList.add(_randomOption);
      }
    }
    //Randomly select one of those answer choices to be the question
    final _random2 = new Random();
    String question = answerList[_random2.nextInt(answerList.length)];
    QuestionModel newQuestion = QuestionModel(question: question, answers: answerList);
    return [newQuestion];
  }

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
              padding: const EdgeInsets.only(bottom: 8.0),
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
