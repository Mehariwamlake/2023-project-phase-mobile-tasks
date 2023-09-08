enum Status { complited, panding }

class Task {
  String title;
  String description;
  DateTime dueDate;
  Status status;

  Task(this.title, this.description, this.dueDate, this.status);

  void complited() {
    status = Status.complited;
  }

  void panding() {
    status = Status.panding;
  }
}

class TaskManager {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
    print('task is added');
  }

  void viewAll() {
    if (tasks.isEmpty) {
      print('not founded');
      return;
    }

    for (var task in tasks) {
      print(task);
    }
  }

  void viewComplited() {
    var isComplited =
        tasks.where((task) => task.status == Status.complited).toList();

    if (isComplited.isEmpty) {
      print('there is no complited task');
      return;
    }
    for (var task in isComplited) {
      print(task);
      return;
    }
  }

  void viewPanding() {
    var isPanding =
        tasks.where((task) => task.status == Status.panding).toList();

    if (isPanding.isEmpty) {
      print('No panding task');
    }

    for (var task in isPanding) {
      print(task);
      return;
    }
  }

  void editTask(int index, Task updatedTask) {
    if (index >= 0 && index < tasks.length) {
      tasks[index] = updatedTask;
      print('updated succesfully');
    } else {
      print('can not update');
    }
  }

  void deleteTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
      print('task is removed');
    } else {
      print('can not removed');
    }
  }
}

void main() {
  final taskManager = TaskManager();
  taskManager.addTask(
      Task('Task 1', 'Description task 1', DateTime.now(), Status.complited));
  taskManager.addTask(
      Task('Task 2', 'Description task 2', DateTime.now(), Status.panding));

  print('all task list');
  taskManager.viewAll();
  taskManager.editTask(
      0,
      Task('Updated Task 1', 'Updated description for Task 1', DateTime.now(),
          Status.panding));
  taskManager.deleteTask(1);
}
