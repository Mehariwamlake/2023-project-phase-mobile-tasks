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
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: TodoList());
  }
}