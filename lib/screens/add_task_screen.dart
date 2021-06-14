import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends GetView<TaskController> {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) {
                newTaskTitle = newValue;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                controller.addTask(newTaskTitle);
                Navigator.pop(context);
                Get.forceAppUpdate();
              },
            ),
          ],
        ),
      ),
    );
  }
}
