import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      
      body: Center(
        child: Text("0",style: TextStyle(fontSize: 40,color: Colors.black54,fontWeight: FontWeight.w700),),
      ),
      
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
          FloatingActionButton(onPressed: (){},child: Icon(CupertinoIcons.minus),)
        ],
      ),
    );
  }
}
