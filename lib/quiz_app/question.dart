import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  const Question({super.key, this.question = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      color: Colors.green,
      child: Container(
        color: Colors.white,
        child: Text(
          question,
          style: const TextStyle(fontSize: 19),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
