import 'package:flutter/cupertino.dart';
//Audio Player and cache
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class ReferenceTone extends StatefulWidget {
  ReferenceTone({Key key}) : super(key: key);

  @override
  _ReferenceToneState createState() => _ReferenceToneState();
}

class _ReferenceToneState extends State<ReferenceTone> {

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
    audioCache = AudioCache(fixedPlayer: player); //set the player to be used
  }


  @override
  Widget build(BuildContext context) {
    return Container(
       child: CupertinoButton.filled(
                  onPressed: () {
                    audioCache.play('c4.mp3');
                  },
                  child: Text(
                    "Play Reference Tone (C4)",
                    textAlign: TextAlign.center, 
                  ),
                ),
    );
  }
}