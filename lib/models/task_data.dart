import 'package:get/get.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskController extends GetxController {
  List<Task> tasks = [
    Task(name: 'Bring Milk'),
    Task(name: 'Bring Bread'),
    Task(name: 'Bring Tea'),
  ];

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
  }

  void updateTask(Task task) {
    task.toggleDone();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
  }
}
