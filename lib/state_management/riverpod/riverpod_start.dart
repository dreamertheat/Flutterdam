import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod_counter_page.dart';

class RiverpodStart extends ConsumerWidget {
  const RiverpodStart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(title: const Text('Riverpod')),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const RiverpodCounterPage(),
                      ));
                    },
                    child: const Text('Basic counter')),
                TextButton(
                    onPressed: () {
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const RiverpodCounterPage(),
                      );
                    },
                    child: const Text('Card State'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
