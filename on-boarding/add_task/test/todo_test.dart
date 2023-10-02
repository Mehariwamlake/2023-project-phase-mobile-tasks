import 'package:add_task/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('todo task test for is the list is avilable and when we tap create task move to other page', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: TodoList(),
    ),
    );

    final test1 ;
  });
}