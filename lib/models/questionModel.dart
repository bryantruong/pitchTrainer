import 'package:flutter/foundation.dart';

class QuestionModel {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  QuestionModel({ //Curly braces for named arguments
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}