import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation/navigation_level_2/nl2_screen_start.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return NL2ScreenStart();
  }
}
