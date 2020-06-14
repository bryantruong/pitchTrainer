import 'package:flutter/foundation.dart';

class QuestionModel {
  final String question;
  //TODO: May need to have the a list of maps
  List<Map<dynamic, dynamic>> answers = List<Map<dynamic, dynamic>>(5); 
  QuestionModel({ //Curly braces for named arguments
    @required this.question,
    @required this.answers,
  });
}