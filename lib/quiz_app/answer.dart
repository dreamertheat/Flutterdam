import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'common_button.dart';

class Answer extends StatelessWidget {
  const Answer({super.key, required this.onClick, required this.label});
  final Function onClick;
  final String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CommonButton(
        title: label,
        onClick: () {
          onClick();
          if (kDebugMode) {
            print("answer 1");
          }
        },
      ),
    );
  }
}
