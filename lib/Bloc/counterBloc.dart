import 'package:bloc_counter_app/Bloc/counterEvent.dart';
import 'package:bloc_counter_app/Bloc/counterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counterBloc extends Bloc<counterEvent,counterState>{
  counterBloc():super(initialState()){
    on<incermentEvent>((event,emit){
      emit(counterState(count: state.count++));
    });

    on<decrementEvent>((event,emit){
      emit(counterState(count: state.count--));
    });
  }
}