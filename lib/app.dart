import 'package:flutter/cupertino.dart';
//Use services library to limit to portrait
import 'package:flutter/services.dart';

class PitchTrainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return CupertinoApp(
      home: PitchTrainerHomePage(),
    );
  }
}

class PitchTrainerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Pitch Trainer'),
      ),
      child: SizedBox(),
    );
  }
}