import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
//Audio Player
import 'package:audioplayers/audioplayers.dart';

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

  final _questions = const [
    //Compile time constant (implying run-time constant)
    {
      'questionText': "What's BT's height?",
      'answers': [
        {'text': "5'6", 'score': 0},
        {'text': "5'7", 'score': 0},
        {'text': "5'10", 'score': 1}
      ]
    },
    {
      'questionText': "What is BT's birthday?",
      'answers': [
        {'text': "4/20", 'score': 1},
        {'text': "8/7", 'score': 0},
        {'text': "9/12", 'score': 0}
      ]
    },
    {
      'questionText': "What is BT's favorite fruit?",
      'answers': [
        {'text': "Banana", 'score': 0},
        {'text': "Pear", 'score': 0},
        {'text': "Mango", 'score': 1}
      ]
    }
  ];
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
        child: Center(
          child: CupertinoButton.filled(
            onPressed: () {},
            child: Text("Play Reference Tone"),
          ),
        ),
      ),
    );
  }
}
