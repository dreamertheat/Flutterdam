import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider = StateProvider<int>(
  (ref) {
    return 0;
  },
);

final secondCounterStateProvider = ChangeNotifierProvider((ref) => Counter());

class Counter extends ChangeNotifier {
  int counter = 0;
  void decreaseCounter() {
    counter--;
    notifyListeners();
  }

  void increaseCounter() {
    counter++;
    notifyListeners();
  }
}
