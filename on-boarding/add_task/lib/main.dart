import 'package:add_task/create.dart';
import 'package:add_task/detail.dart';
import 'package:add_task/todo.dart';
import 'package:flutter/material.dart';
import 'package:add_task/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => TodoList(),
        },
        home: HomePage());
  }
}
