import 'package:counter_bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
          },
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterBloc>().add(ResetEvent());
          },
          child: const Icon(Icons.exposure_zero),
        ),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
          },
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
