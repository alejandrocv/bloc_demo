import 'package:bloc_demo/pages/home/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  (state is InitCount || state is Counted)
                      ? '${state.num}'
                      : (state is Counting ? "Counting..." : "Error"),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: Visibility(
            visible: state is! Counting,
            child: FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(Increment()),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
