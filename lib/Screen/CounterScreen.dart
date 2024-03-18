import 'package:bloc_counter_app/bloc/State.dart';
import 'package:bloc_counter_app/bloc/bloc.dart';
import 'package:bloc_counter_app/bloc/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      
      body: BlocBuilder(
        builder: (context, state) {
          if(state is InitialState){
            _Counter(0);
          }

          else if(state is UpdatedState){
            _Counter(state.count);
          }
          return Container();
        },
      ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: (){
            context.read<CounterBloc>().add(IncrementEvent());
          },child: Icon(Icons.add),),
          FloatingActionButton(onPressed: (){
            context.read<CounterBloc>().add(DecrementEvent());
          },child: Icon(CupertinoIcons.minus),)
        ],
      ),
    );
  }
}

_Counter(int count){
  return Center(
    child: Text("$count",style: TextStyle(fontSize: 40,color: Colors.black54,fontWeight: FontWeight.w700),),
  );

}
