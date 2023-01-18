import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CountEvent, CounterState> {
  static int num = 0;

  CounterBloc() : super(InitCount(num: num)) {
    on<Increment>((event, emit) async {
      try {
        emit(Counting());
        await Future.delayed(const Duration(seconds: 2));
        emit(Counted(num: ++num));
      } catch (e) {
        emit(CountError(error: e.toString()));
        emit(InitCount(num: num));
      }
    });
  }
}
