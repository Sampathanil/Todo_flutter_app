import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends GetView<TaskController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final task = controller.tasks[index];
        return TaskTile(
          taskTitle: task.name,
          isChecked: task.isDone,
          checkboxCallback: (checkboxState) {
            controller.updateTask(task);
            Get.forceAppUpdate();
          },
          longPressCallback: () {
            controller.deleteTask(task);
            Get.forceAppUpdate();
          },
        );
      },
      itemCount: controller.tasks.length,
    );
  }
}
