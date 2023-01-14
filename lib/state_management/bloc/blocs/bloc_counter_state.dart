import 'package:equatable/equatable.dart';

abstract class BlocCounterState extends Equatable {
  const BlocCounterState();
  @override
  List<Object> get props => <Object>[];
}

class SetCounterSuccessState extends BlocCounterState {
  const SetCounterSuccessState(this.successMessage);
  final String successMessage;
}

class SetCounterFailState extends BlocCounterState {
  const SetCounterFailState(this.failMessage);
  final String failMessage;
}
