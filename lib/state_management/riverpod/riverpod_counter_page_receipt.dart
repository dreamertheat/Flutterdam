import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod_counter_provider.dart';

class RiverpodCounterPageReceipt extends ConsumerWidget {
  const RiverpodCounterPageReceipt({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var value = ref.watch(counterStateProvider);
    var value2 = ref.watch(secondCounterStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod report"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('First Counter: $value'),
            Text('Second Counter: ${value2.counter}'),
          ],
        ),
      ),
    );
  }
}
