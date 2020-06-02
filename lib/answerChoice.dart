import 'package:flutter/cupertino.dart';

class AnswerChoice extends StatelessWidget {
  final String answerText;
  AnswerChoice(this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      width: double.infinity,
      child: CupertinoButton(
        color: CupertinoColors.systemGrey5,
        child: Text(answerText,
            style: TextStyle(color: CupertinoColors.activeBlue)),
        onPressed: () {},
      ),
    );
  }
}
