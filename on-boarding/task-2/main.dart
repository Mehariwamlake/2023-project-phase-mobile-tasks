class Task {
  late String title;
  late String description;
  late DateTime dueDate;
  late String Status;

  Task(String title, String desctiption, DateTime dueDate, String Status) {
    this.title = title;
    this.description = desctiption;
    this.dueDate = dueDate;
    this.Status = Status;
  }
}
