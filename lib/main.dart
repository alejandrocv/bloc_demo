import 'package:bloc_demo/pages/home/bloc/counter_bloc.dart';
import 'package:bloc_demo/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BlocDemoApp());
}

class BlocDemoApp extends StatelessWidget {
  const BlocDemoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => CounterBloc(),
        child: const HomePage(title: 'Bloc Demo'),
      ),
    );
  }
}
