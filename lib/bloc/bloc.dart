import 'package:bloc_counter_app/bloc/State.dart';
import 'package:bloc_counter_app/bloc/event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{

  int Counter=0;
  CounterBloc() : super(InitialState()){
    on<IncrementEvent>(onIncrement);
    on<DecrementEvent>(onDecrement);
  }

  onIncrement(IncrementEvent event,Emitter<CounterState> emit){
    Counter++;
    emit(UpdatedState(Counter));
  }

  onDecrement(DecrementEvent event,Emitter<CounterState> emit){
    Counter--;
    emit(UpdatedState(Counter));
  }
}