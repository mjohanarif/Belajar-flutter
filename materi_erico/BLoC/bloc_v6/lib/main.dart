import 'dart:io';

import 'package:bloc_v6/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'number_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterState counterState = context.watch<CounterBloc>().state;

    int number = context.select<CounterBloc, int>((counterBloc) =>
        (counterBloc.state is CounterValue)
            ? (counterBloc.state as CounterValue).value
            : null);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter BLoC v6.1.1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: (_, state) {
                  return NumberCard("Bloc\nBuilder",
                      (state is CounterValue) ? state.value : null);
                },
              ),
              SizedBox(width: 40),
              NumberCard("Watch",
                  (counterState is CounterValue) ? counterState.value : null),
              SizedBox(width: 40),
              NumberCard("Select", number),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CounterBloc>().add(Increment());
            },
            child: Text(
              'INCREMENT',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
