import 'package:flutter_complete_guide/state_management/bloc/repository/bloc_counter_repository.dart';

class BlocCounterService implements BlocCounterRepository {
  @override
  Future<String> getCounter() async {
    return '0';
  }

  @override
  Future<String> putCounter(String counter) async {
    int? value = int.tryParse(counter);

    if (value != null) {
      return 'error';
    } else {
      return counter;
    }
  }
}
