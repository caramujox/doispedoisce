import 'package:cloud_firestore/cloud_firestore.dart';

enum TaskPurpose { personal, financial }

class Task {
  final String name;
  final DateTime dueDate;
  List<bool> schedule = List<bool>.filled(7, false, growable: false);
  final TaskPurpose taskPurpose;
  final bool isComplete;

  Task(this.name, this.dueDate, this.schedule, this.taskPurpose,
      this.isComplete);

  Task.fromDocumentSnapshot(
    DocumentSnapshot doc,
  )   : name = doc['name'],
        dueDate = doc['dueDate'].toDate(),
        taskPurpose = TaskPurpose.financial,
        isComplete = doc['isComplete'];
}
