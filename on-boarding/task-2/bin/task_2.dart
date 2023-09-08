class Task {
  String title;
  String description;
  DateTime dueDate;
  bool status;

  Task(this.title, this.description, this.dueDate, this.status);

  @override
  String toString() {
    return 'Title: $title\nDescription: $description\nDue Date: $dueDate\nStatus: ${status ? 'Completed' : 'Pending'}';
  }
}

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }
}

void main() {
  final taskManager = TaskManager();
  taskManager
      .addTask(Task('Task 1', 'Description task 1', DateTime.now(), false));

  print(taskManager);
}
