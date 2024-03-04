part of 'counter_bloc.dart';

abstract class CounterState {}

class CounterInitialState extends CounterState {}

class CounterValueChangedState extends CounterState {
  final int counter;

  CounterValueChangedState({
    required this.counter,
  });
}
