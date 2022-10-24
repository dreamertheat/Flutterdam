import 'package:flutter/material.dart';

class NL2ScreenStart extends StatelessWidget {
  const NL2ScreenStart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(10),
        child: const Text("navigation level 2"),
      )),
    );
  }
}
