import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_bloc_example/examples/list_manipulation/bloc/TodoListCubit.dart';
import 'package:list_bloc_example/examples/list_manipulation/list_manipulation_screen.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => TodoListCubit()..load(),
        child: const ListManipulationScreen(),
      ),
    );
  }
}
