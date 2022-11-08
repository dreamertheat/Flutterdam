import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/native/method_channel/native_method_channel_start.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const NativeMethodChannelStart();
  }
}
