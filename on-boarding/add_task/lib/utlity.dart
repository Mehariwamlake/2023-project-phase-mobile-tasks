import 'dart:math';

import 'package:flutter/material.dart';

class Task {
  final String date;
  final String title;
  final Color color;
  final String description;

  Task(this.date, this.title, this.color, {this.description = ""});
}

List<Task> tasks = [
  Task('April 29 2023', 'UI/UX APP Design',
      const Color.fromARGB(255, 236, 19, 19),
      description: "Task 1 description"),
  Task('May 9 2023', 'ui/ux app design', const Color.fromARGB(255, 2, 28, 222),
      description: "Task 2 description"),
  Task('May 9 2023', 'view conditon', const Color.fromARGB(255, 255, 211, 52),
      description: "Task 3 description"),
  Task('May 9 2023', 'footboll cu dryballing',
      const Color.fromARGB(255, 222, 2, 108),
      description: "Task 4 description")
];

Color getRandomColor() {
  final Random random = Random();
  final int red = random.nextInt(256);
  final int green = random.nextInt(256);
  final int blue = random.nextInt(256);
  return Color.fromRGBO(red, green, blue, 1.0);
}
