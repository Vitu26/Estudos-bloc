import 'package:counter_bloc/bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/bloc/counter_bloc_page.dart';
import 'package:counter_bloc/cubit/cubit_counter_page.dart';
import 'package:counter_bloc/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/bloc': (_) => BlocProvider(
          create: (_) => CounterBloc(),
              child: const CounterBlocPage(),
            ),
        '/cubit': (_) => const CubitCounterPage(),
      },
      home: HomePage(),
    );
  }
}
