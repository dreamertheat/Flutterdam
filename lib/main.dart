import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/meals_app/meals_app.dart';
import 'package:flutter_complete_guide/shop_app/shop_app.dart';
import 'package:flutter_complete_guide/testnav/screen_default.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenDefault();
  }
}
