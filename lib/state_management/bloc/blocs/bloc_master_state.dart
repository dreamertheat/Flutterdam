import 'bloc_counter_state.dart';

abstract class BlocMasterState implements BlocCounterState {
  const BlocMasterState();

  @override
  List<Object> get props => <Object>[];

  @override
  bool get stringify => true;
}

/// State where screen is initialized
class InitialState extends BlocMasterState {
  const InitialState();
}
