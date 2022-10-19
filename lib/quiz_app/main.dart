import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  final String appname = "My First App";

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      if (questions.length > (_questionIndex)) {
        _questionIndex += 1;
        _totalScore += score;
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Blue', 'score': 1},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 8},
        {'text': 'White', 'score': 12},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 2},
        {'text': 'Dog', 'score': 3},
        {'text': 'Lion', 'score': 4},
        {'text': 'House Cat', 'score': 5},
      ]
    },
    {
      'questionText': 'What\'s your favorite sport?',
      'answers': [
        {'text': 'Billiards', 'score': 1},
        {'text': 'Boxing', 'score': 1},
        {'text': 'Basketball', 'score': 1},
        {'text': 'Badminton', 'score': 1},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.appname),
        ),
        body: (questions.length > (_questionIndex))
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(
                totalScore: _totalScore,
                onClick: _resetQuiz,
              ),
      ),
    );
  }
}
