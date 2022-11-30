import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/scoped_model/scoped_model_controller.dart';
import 'package:scoped_model/scoped_model.dart';

class SMProductDisplay extends StatefulWidget {
  const SMProductDisplay({super.key});

  @override
  State<SMProductDisplay> createState() => _SMProductDisplayState();
}

class _SMProductDisplayState extends State<SMProductDisplay> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedModelController>(
        builder: (context, child, model) {
      return content(model);
    });
  }

  Widget content(ScopedModelController model) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Counter 1:'),
            const Text('Counter 2:'),
            const Padding(padding: EdgeInsets.all(16)),
            const Text('Modify Counter 1'),
            const Padding(padding: EdgeInsets.all(4)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  child: const Text('+'),
                  onPressed: () {},
                ),
                const Spacer(),
                FloatingActionButton(
                  child: const Text('-'),
                  onPressed: () {},
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(16)),
            const Text('Modify Counter 2'),
            const Padding(padding: EdgeInsets.all(4)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  child: const Text('+'),
                  onPressed: () {},
                ),
                const Spacer(),
                FloatingActionButton(
                  child: const Text('-'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ));
  }
}
