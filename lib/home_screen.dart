import 'package:counter_bloc/counter_bloc/counter_bloc.dart';
import 'package:counter_bloc/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter is',
              style: TextStyle(fontSize: 28),
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: ((context, state) {
                if (state is CounterInitialState) {
                  return const Text(
                    "0",
                    style: TextStyle(fontSize: 32),
                  );
                } else if (state is CounterValueChangedState) {
                  return Text(
                    state.counter.toString(),
                    style: const TextStyle(fontSize: 32),
                  );
                } else {
                  return const  SizedBox();
                }
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomButtons(),
    );
  }
}
