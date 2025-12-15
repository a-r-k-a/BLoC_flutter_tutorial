import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blocflutter/counter/counter_view.dart';
import 'package:blocflutter/counter/counter_cubit.dart';
/*

COUNTER PAGE:  responsible for providing CounterCubit to CounterView (UI)

- use BlocProvider

*/


class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    //bloc provider
    return BlocProvider(
      create: (context) => CounterCubit(0),

      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          if (state == 10) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(content: Text("10 reached")),
            );
          }
        },
        child: CounterView(),
      ),
    );
  }
}
