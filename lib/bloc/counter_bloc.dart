import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEventIncrement>((event, emit) {
      emit(state + 1);
    });
    on<CounterEventDecrement>((event, emit) {
      emit(state - 1);
    });
  }
}
