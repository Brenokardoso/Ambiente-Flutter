part of 'counter_bloc.dart';

abstract class CounterState {
  final int counter;
  CounterState(this.counter);
}

class InitalCounterState extends CounterState {
  InitalCounterState() : super(0);

  
}
