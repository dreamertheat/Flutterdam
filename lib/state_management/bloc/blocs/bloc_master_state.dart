import 'bloc_counter_state.dart';

abstract class MasterState implements BlocCounterState {
  const MasterState();

  @override
  List<Object> get props => <Object>[];

  @override
  bool get stringify => true;
}

/// State where screen is initialized
class InitialState extends MasterState {
  const InitialState();
}
