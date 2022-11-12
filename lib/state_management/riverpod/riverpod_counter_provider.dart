import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider<RiverpodCounterProvider, int>(
    (ref) => RiverpodCounterProvider());

final counterStateProvider = StateProvider<int>(
  (ref) {
    return 0;
  },
);

class RiverpodCounterProvider extends StateNotifier<int> {
  RiverpodCounterProvider() : super(0);

  void incrementCounter() => state++;
  void decreaseCounter() => state--;
}
