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
}

void main() {
  final taskManager = TaskManager();
  taskManager.addTask(
      Task('Task 1', 'Description task 1', DateTime.now(), Status.complited));
  taskManager.addTask(
      Task('Task 2', 'Description task 2', DateTime.now(), Status.panding));

  print('all task list');
  taskManager.viewAll();
}
