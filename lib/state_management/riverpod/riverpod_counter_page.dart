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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('first counter: $countValue'),
            Text('second counter: ${countValue2.counter}'),
            const Spacer(),
            SafeArea(
              child: Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Modify Counter#1'),
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
                    const Padding(padding: EdgeInsets.all(16)),
                    const Text('Modify Counter#2'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          child: const Text('+'),
                          onPressed: () {
                            ref
                                .read(secondCounterStateProvider)
                                .increaseCounter();
                          },
                        ),
                        const Spacer(),
                        FloatingActionButton(
                          child: const Text('-'),
                          onPressed: () {
                            ref
                                .read(secondCounterStateProvider)
                                .decreaseCounter();
                          },
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.all(16)),
                    TextButton(
                      child: const Text('Proceed to report'),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              const RiverpodCounterPageReceipt(),
                        ));
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
