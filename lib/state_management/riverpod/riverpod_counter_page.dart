import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod_counter_provider.dart';

class RiverpodCounterPage extends ConsumerWidget {
  const RiverpodCounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var value = ref.watch(counterStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Text(value.toString()),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Text('+'),
            onPressed: () {
              ref.read(counterStateProvider.notifier).state++;
            },
          ),
          FloatingActionButton(
            child: const Text('-'),
            onPressed: () {
              ref.read(counterStateProvider.notifier).state--;
            },
          ),
        ],
      ),
    );
  }
}
