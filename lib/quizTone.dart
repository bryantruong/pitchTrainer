import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Audio Player and cache
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
void audioPlayerHandler(AudioPlayerState value) => print('Quiz Tone State => $value');

class QuizTone extends StatefulWidget {
  String note;
  QuizTone(this.note);

  @override
  _QuizToneState createState() => _QuizToneState();
}

class _QuizToneState extends State<QuizTone> {
  AudioPlayer player;
  AudioCache audioCache;

  //initState gets called upon start
  @override
  void initState() {
    _initPlayer();
    super.initState();
  }

  void _initPlayer() {
    player = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: player); //set the player to be used\
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: RawMaterialButton(
        onPressed: () {
          player
              .monitorNotificationStateChanges(audioPlayerHandler);

          audioCache.play(widget.note + '.mp3');
        },
        elevation: 3.0,
        fillColor: Colors.white,
        child: Icon(
          CupertinoIcons.volume_up,
          size: 75.0,
        ),
        padding: EdgeInsets.all(15.0),
        shape: CircleBorder(),
      ),
    );
  }
}
