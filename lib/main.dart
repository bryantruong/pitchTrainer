import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
//Audio Player and cache
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

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

  AudioPlayer player;
  AudioCache audioCache; //TODO: Do I need an audio cache?

  //initState gets called upon start
  @override
  void initState() {
    _initPlayer();
    super.initState();
  }

  void _initPlayer() {
    player = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: player); //set the player to be used
  }

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
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: CupertinoButton.filled(
                  onPressed: () {
                    audioCache.play('c3.mp3');
                  },
                  child: Text(
                    "Play Reference Tone (C4)",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            //your elements here
          ],
        ),
      ),
    );
  }
}
