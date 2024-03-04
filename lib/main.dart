import 'package:counter_bloc/counter_bloc/counter_bloc.dart';
import 'package:counter_bloc/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CounterBlocApp());
}

class CounterBlocApp extends StatelessWidget {
  const CounterBlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
