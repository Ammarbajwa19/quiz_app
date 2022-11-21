import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionindex;
  final Function answerquestion;
  quiz(
      {required this.answerquestion,
      required this.questions,
      required this.questionindex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionindex]['questiontext'] as String),
        ...(questions[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerquestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
