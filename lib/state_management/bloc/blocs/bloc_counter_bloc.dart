import 'package:bloc/bloc.dart';
import 'package:flutter_complete_guide/state_management/bloc/blocs/bloc_counter_event.dart';
import 'package:flutter_complete_guide/state_management/bloc/blocs/bloc_counter_state.dart';
import 'package:flutter_complete_guide/state_management/bloc/repository/bloc_counter_repository.dart';

import 'bloc_master_state.dart';

class BlocCounterBloc extends Bloc<BlocCounterEvent, BlocCounterState> {
  BlocCounterBloc(this.repository) : super(const InitialState()) {
    on<SetCounterValueEvent>(_setCounterValueEvent);
  }
  BlocCounterRepository repository;

  void _setCounterValueEvent(
      SetCounterValueEvent event, Emitter<BlocCounterState> emit) {}
}
