import 'package:flutter/foundation.dart';

class QuestionModel {
  final String question;
  List<Map<dynamic, dynamic>> answers = List<Map<dynamic, dynamic>>(5); 
  QuestionModel({ //Curly braces for named arguments
    @required this.question,
    @required this.answers,
  });
}