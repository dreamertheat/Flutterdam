import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/navigation/navigation_level_1/nl1_screen_start.dart';

import 'state_management/bloc/bloc_start.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocStart();
  }
}
