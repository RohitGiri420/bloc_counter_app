import 'package:bloc_counter_app/Bloc/counterBloc.dart';
import 'package:bloc_counter_app/Bloc/counterEvent.dart';
import 'package:bloc_counter_app/Bloc/counterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counterScreen extends StatefulWidget {
  const counterScreen({super.key});

  @override
  State<counterScreen> createState() => _counterScreenState();
}

class _counterScreenState extends State<counterScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocBuilder<counterBloc,counterState>(builder: (context, state) {
        return Center(
          child: Text("${state.count}"),
        );
      },),

      floatingActionButton: Row(
        children: [
          FloatingActionButton(onPressed: (){context.read<counterBloc>().add(incermentEvent());},child: Icon(Icons.add),),
          FloatingActionButton(onPressed: (){context.read<counterBloc>().add(decrementEvent());},child: Icon(Icons.remove),),
        ],
      ),
    );
  }
}
