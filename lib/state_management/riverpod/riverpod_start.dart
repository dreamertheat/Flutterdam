import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/state_management/riverpod/riverpod_counter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod_counter_page.dart';

class RiverpodStart extends ConsumerWidget {
  const RiverpodStart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: MaterialApp(
        home: Builder(
          builder: (context) => Container(
            child: Scaffold(
              appBar: AppBar(title: const Text('Riverpod')),
              body: SafeArea(
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          print('lolx');
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
        ),
      ),
    );
  }
}
