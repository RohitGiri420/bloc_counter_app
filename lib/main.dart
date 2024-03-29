import 'package:bloc_counter_app/Bloc/counterBloc.dart';
import 'package:bloc_counter_app/CounterScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => counterBloc(),
        child: MaterialApp(
          home: counterScreen(),
        ));
  }

}