import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/riverpod/riverpod_start.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_start.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScopedModelStart();
  }
}
