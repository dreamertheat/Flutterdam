abstract class BlocCounterEvent {
  const BlocCounterEvent();
}

class SetCounterValueEvent extends BlocCounterEvent {
  final String counter;

  SetCounterValueEvent(this.counter);
}
