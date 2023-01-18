part of 'counter_bloc.dart';

//@immutable extends Equatable
abstract class CounterState {
  final int num = 0;

  @override
  List<Object?> get props => [];
}

class InitCount extends CounterState {
  final int num;

  InitCount({required this.num});

  @override
  List<Object?> get props => [num];
}

class Counting extends CounterState {
  @override
  List<Object?> get props => [];
}

class Counted extends CounterState {
  final int num;

  Counted({required this.num});

  @override
  List<Object?> get props => [num];
}

class CountError extends CounterState {
  final String error;

  CountError({required this.error});

  @override
  List<Object?> get props => [error];
}
