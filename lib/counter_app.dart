import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                );
              },
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () => context.read<CounterBloc>().add(CounterIncrement(),),
                    child: const Icon(CupertinoIcons.add),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white),
                    onPressed: () => context.read<CounterBloc>().add(CounterDecrement(),),
                    child: const Icon(CupertinoIcons.minus),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
