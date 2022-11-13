import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/riverpod/riverpod_counter_page_receipt.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod_counter_provider.dart';

class RiverpodCounterPage extends ConsumerWidget {
  const RiverpodCounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var countValue = ref.watch(counterStateProvider);
    var countValue2 = ref.watch(secondCounterStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('first counter: $countValue'),
            Text('second counter: ${countValue2.counter}'),
          ],
        ),
      ),
      floatingActionButton: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('Modify StateProvider'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: const Text('+'),
                    onPressed: () {
                      ref.read(counterStateProvider.notifier).state++;
                    },
                  ),
                  const Spacer(),
                  FloatingActionButton(
                    child: const Text('-'),
                    onPressed: () {
                      ref.read(counterStateProvider.notifier).state--;
                    },
                  ),
                ],
              ),
              const Text('Modify ChangeNotifierProvider'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: const Text('+'),
                    onPressed: () {
                      ref.read(secondCounterStateProvider).increaseCounter();
                    },
                  ),
                  const Spacer(),
                  FloatingActionButton(
                    child: const Text('-'),
                    onPressed: () {
                      ref.read(secondCounterStateProvider).decreaseCounter();
                    },
                  ),
                ],
              ),
              FloatingActionButton(
                child: const Text('END'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RiverpodCounterPageReceipt(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
