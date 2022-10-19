import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final Function onClick;
  const CommonButton({super.key, required this.title, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
      ),
      onPressed: () {
        onClick();
      },
      child: Text(title),
    );
  }
}
