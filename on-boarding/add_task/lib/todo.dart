import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Task Detail',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.orange,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'image/stickman-with-todo-list.png',
                  height: screen.height * 0.25,
                ),
              ],
            ),
            const Text(
              'Tasks list',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  lists('adlkfjl', '12/13/2900'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget lists(String title, String date) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Row(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Card(
          child: Container(
            child: Text(title[0]),
          ),
        ),
      ),
      Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 15),
          ),
          Text(date),
          SizedBox(
            width: 3,
          ),
        ],
      )
    ]),
  );
}
