import 'package:flutter/material.dart';

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
