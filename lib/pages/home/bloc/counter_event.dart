part of 'counter_bloc.dart';

abstract class CountEvent {
  @override
  List<Object> get props => [];
}

class Increment extends CountEvent {}
