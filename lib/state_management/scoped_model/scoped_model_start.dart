import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_product_display.dart';
import 'package:scoped_model/scoped_model.dart';

import 'scoped_model_controller.dart';

class ScopedModelStart extends StatelessWidget {
  const ScopedModelStart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "State management : Scoped Model",
      home: ScopedModel<ScopedModelController>(
        model: ScopedModelController(),
        child: Scaffold(
          body: const SMProductDisplay(),
          appBar: AppBar(
            title: const Text("Scoped Model"),
          ),
        ),
      ),
    );
  }
}
