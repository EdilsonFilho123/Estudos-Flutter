part of 'counter_cubit.dart';

abstract class CounterState {
  final int counter;

  CounterState(this.counter);
}

class CounterStateInitial extends CounterState {
  CounterStateInitial() : super(0);
}

class CounterStateData extends CounterState {
  CounterStateData(super.counter);
}