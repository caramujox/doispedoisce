enum TaskPurpose { personal, financial }

class Task {
  final String name;
  final DateTime dueDate;
  List<bool> schedule = List<bool>.filled(7, false, growable: false);
  final TaskPurpose taskPurpose;

  Task(this.name, this.dueDate, this.schedule, this.taskPurpose);
}
