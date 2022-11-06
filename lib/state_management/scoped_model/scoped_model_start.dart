import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_display.dart';

class ScopeModelStart extends StatelessWidget {
  const ScopeModelStart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "State management : Scoped Model",
      home: Scaffold(
        body: const SMProductDisplay(),
        appBar: AppBar(
          title: const Text("Scope Model"),
        ),
      ),
    );
  }
}
