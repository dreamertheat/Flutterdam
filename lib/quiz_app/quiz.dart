import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz_app/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {super.key,
      required this.questions,
      required this.questionIndex,
      required this.answerQuestion});

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        question: questions[questionIndex]['questionText'].toString(),
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((e) {
        return Answer(
            onClick: () {
              answerQuestion(e['score']);
            },
            label: e['text'].toString());
      }).toList()
    ]);
  }
}
