import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.totalScore, required this.onClick});

  final int totalScore;
  final Function onClick;

  String get resultPhrase {
    var result = 'You did it!';
    if (totalScore <= 8) {
      result = 'You are awesome and amazing!';
    } else if (totalScore <= 12) {
      result = 'You are good!';
    } else if (totalScore <= 15) {
      result = 'You are strange but its not bad!';
    } else {
      result = 'Evil draws close';
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
          margin: const EdgeInsets.all(16.0),
        ),
        Text(
          "$resultPhrase!",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          "your score is $totalScore",
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
            onPressed: () {
              onClick();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan)),
            child: const Text("Start again"))
      ],
    ));
  }
}
