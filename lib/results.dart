import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
        title: Text("Results"),
        content: Text("Correct Answer: C5"),
        actions: [CupertinoDialogAction(child: CupertinoButton(onPressed: () {  },
        child: Text("Continue")),)]
      ),
    );
  }
}
